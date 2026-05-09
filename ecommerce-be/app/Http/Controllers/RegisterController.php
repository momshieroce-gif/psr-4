<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests\UserRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Laravel\Passport\RefreshToken;
use Laravel\Passport\Token;
use App\Models\User;
use App\Enum\Role;
use App\Services\UserMenuService;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Log;
use Laravel\Socialite\Facades\Socialite;
use App\Models\RoleUser;
use Throwable;
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
        $callbackUrl = url('/auth/facebook/callback');

        return Socialite::driver('facebook')
            ->redirectUrl($callbackUrl)
            ->scopes(['email'])
            ->stateless()
            ->redirect();
    }

    public function facebookCallback()
    {
        try {
            $callbackUrl = url('/auth/facebook/callback');
            $fbUser = Socialite::driver('facebook')
                ->redirectUrl($callbackUrl)
                ->stateless()
                ->user();
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
            $user->status = 1;


            if (!$user->exists) {
                $user->password = bcrypt(Str::random(40));
            }

            if (isset($user->email_verified_at) && !$user->email_verified_at) {
                $user->email_verified_at = now();
            }

            $user->save();

            RoleUser::create([
                'user_id' => $user->id,
                'role_id' => Role::CUSTOMER
            ]);
            Auth::login($user);

            $userMenuService = app(UserMenuService::class);
            $token = $user->createToken('facebook-login')->accessToken;

            Log::info('Facebook login successful', [
                'user' => $user,
                'token' => $token,
                'optimus_id' => $user->optimus_id,
                'name' => $user->name,
                'mobile' => $user->mobile,
                'userMenu' => json_encode($userMenuService->getUserMenus()),
            ]);
            return redirect($this->getFrontendLoginRedirect([
                'token' => $token,
                'optimus_id' => $user->optimus_id,
                'name' => $user->name,
                'mobile' => $user->mobile,
                'userMenu' => json_encode($userMenuService->getUserMenus()),
            ]));

        } catch (Throwable $e) {
            Log::error('Facebook login failed', [
                'message' => $e->getMessage(),
                'callback_url' => url('/auth/facebook/callback'),
                'request_url' => request()->fullUrl(),
            ]);

            return redirect($this->getFrontendLoginRedirect([
                'error' => 'facebook_failed',
            ]));
        }
    }

    public function loginPageRedirect()
    {
        return redirect($this->getFrontendLoginRedirect());
    }

    private function getFrontendLoginRedirect(array $query = []): string
    {
        $frontendUrl = rtrim((string) env('FRONTEND_URL', ''), '/');

        if ($frontendUrl === '') {
            $request = request();
            $host = (string) $request->getHost();
            $scheme = (string) $request->getScheme();

            // Common deployment pattern: API on api.example.com, SPA on example.com.
            $frontendHost = preg_replace('/^api\./i', '', $host) ?: $host;
            $frontendUrl = $scheme . '://' . $frontendHost;
        }

        return $frontendUrl . '/login?' . http_build_query($query);
    }

}
