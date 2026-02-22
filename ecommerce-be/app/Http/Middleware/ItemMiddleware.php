<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;
use App\Models\StoreMenuAccess;
use App\Traits\UtilsTrait;
use App\Enum\HttpAccessRight;
use App\Traits\Obfuscate\OptimusRequiredToModel;
use App\Enum\StoreMenu;


class ItemMiddleware {
    use UtilsTrait, OptimusRequiredToModel;
    /**
    * Handle an incoming request.
    *
    * @param  \Closure( \Illuminate\Http\Request ): ( \Symfony\Component\HttpFoundation\Response )  $next
    */

    /**
     * required filters=store_id:1
     * if store_id is not provided, return 403
     * if store_id is provided, check if the user has access to the store
     * if the user has access to the store, return the next request
     * if the user does not have access to the store, return 403
     */
    public function handle( Request $request, Closure $next ): Response {

        if($this->isSuperAdmin()){
            return $next( $request );
        }
        
        $storeId    = $request->filters;
        [ $storeKey, $storeId ] =  $this->pregSplit( '/:/', $request->filters??[] );
        $storeId = $this->optimus()->decode( $storeId );
        $method = $request->method();
        $userId     = Auth::User()->id;

        $storeMenuAccess = StoreMenuAccess::where( 'user_id', $userId )
                ->where( 'store_id', $storeId )
                ->where( 'store_menu_id', StoreMenu::ITEMS )
                ->where( 'access_right_id',  constant( "App\Enum\HttpAccessRight::$method" ) )
                ->first();

        if ( !$storeMenuAccess ) {
            throw new \App\Exceptions\AccessDeniedException( 'Access Denied!' );
        }
        return $next( $request );
    }
}
