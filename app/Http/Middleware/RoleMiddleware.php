<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RoleMiddleware
{
    public function handle($request, Closure $next, ...$roles) {
        if (!in_array($request->user()->role, $roles)) {
            return response()->json(['message' => 'Access Denied'], 403);
        }
    
        return $next($request);
    }
    
}