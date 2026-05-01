<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests\UserRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Laravel\Passport\RefreshToken;
use Laravel\Passport\Token;
use App\Models\User;
use App\Observers\UserObserver;
use App\Services\UserMenuService;
use Illuminate\Support\Str;
use Laravel\Socialite\Facades\Socialite;
class RegisterController extends BaseController
{
    /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'firstname'     => 'required',
            'lastname'      => 'required',
            'email'         => 'required|email',
            'password'      => 'required'
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        /** @var User $user */
        $user = User::create($input);
        $success['token'] =  $user->createToken('MyApp')->accessToken;
        $success['name'] =  $user->name;
   
        return $this->sendResponse($success, 'User register successfully.');
    }
   
    /**
     * Login api
     *
     * @return \Illuminate\Http\Response
     */
    public function login(UserRequest $request)
    {
        $user = User::where('mobile', $request->mobile)->first();

        if(!$user->status){
            return $this->sendError('Please verify your number.');
        }

        if(Auth::attempt(['mobile' => $request->mobile, 'password' => $request->password, 'status' => 1]))
        {
            $userMenuService = app(UserMenuService::class);
            /** @var User $user */
            $user = Auth::user(); 
            $success['token'] =  $user->createToken('MyApp')->accessToken;
            $success['optimus_id'] =  $user->optimus_id;
            $success['name'] =  $user->name;
            $success['mobile'] =  $user->mobile;
            $success['userMenu'] = $userMenuService->getUserMenus();

            return $this->sendResponse($success, 'You have login successfully.');
            
        } 
        else{ 
            return $this->sendError('Invalid Credentials');
        } 
    }

    /**
     * Logout All Device
     */
    public function logout(){
        /** @var User $user */
        $user = Auth::user();
        $tokens =  $user->tokens->pluck('id');
        Token::whereIn('id', $tokens)
            ->update(['revoked'=> true]);

        RefreshToken::whereIn('access_token_id', $tokens)->update(['revoked' => true]);

        return $this->sendResponse(null, 'You have logout successfully.');
    }

    public function profile(){
        /** @var User $user */
        $user = Auth::user();
        return $this->sendResponse($user, null);
    }

    public function facebook()
    {
        return Socialite::driver('facebook')
            ->scopes(['email'])
            ->stateless()
            ->redirect();
    }

    public function facebookCallback()
    {
        try {
            $fbUser = Socialite::driver('facebook')->stateless()->user();
            $email = $fbUser->getEmail();

            if (!$email) {
                return redirect($this->getFrontendLoginRedirect([
                    'error' => 'facebook_email_required',
                ]));
            }

            /** @var User $user */
            $user = User::firstOrNew(['email' => $email]);
            $user->name = $fbUser->getName() ?: $fbUser->getNickname() ?: 'Facebook User';
            $user->email = $email;

            if (!$user->exists) {
                $user->password = bcrypt(Str::random(40));
            }

            if (isset($user->status) && !$user->status) {
                $user->status = 1;
            }

            if (isset($user->email_verified_at) && !$user->email_verified_at) {
                $user->email_verified_at = now();
            }

            $user->save();

            Auth::login($user);

            $userMenuService = app(UserMenuService::class);
            $token = $user->createToken('facebook-login')->accessToken;

            return redirect($this->getFrontendLoginRedirect([
                'token' => $token,
                'optimus_id' => $user->optimus_id,
                'name' => $user->name,
                'mobile' => $user->mobile,
                'userMenu' => json_encode($userMenuService->getUserMenus()),
            ]));

        } catch (\Exception $e) {
            return redirect($this->getFrontendLoginRedirect([
                'error' => 'facebook_failed',
            ]));
        }
    }

    private function getFrontendLoginRedirect(array $query = []): string
    {
        $frontendUrl = rtrim(env('FRONTEND_URL'), '/');

        return $frontendUrl . '/login?' . http_build_query($query);
    }

}
