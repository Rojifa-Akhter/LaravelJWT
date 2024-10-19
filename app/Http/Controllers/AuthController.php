<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Password;
use Illuminate\Auth\Events\Verified;
use App\Notifications\NewUserNotification;

class AuthController extends Controller
{  
    public function register(Request $request) {
        $this->validate($request, [
            'name' => 'required|string',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed',
            'role' => 'required|in:user,admin',
        ]);
    
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => $request->role,
        ]);
    
        $admins = User::where('role', 'admin')->get();
        foreach ($admins as $admin) {
            $admin->notify(new NewUserNotification($user));
        }

        $user->sendEmailVerificationNotification();

        return response()->json(['message' => 'User successfully registered, check your email for verification']);
    }
    

    public function login(Request $request) {
        $credentials = $request->only('email', 'password');

        if (!$token = Auth::attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token);
    }

    protected function respondWithToken($token) {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => auth()->user(),
        ]);
    }
    
    // AuthController.php
    public function forgotPassword(Request $request) {
        $this->validate($request, ['email' => 'required|email']);

        // Sending the reset link
        $status = Password::sendResetLink($request->only('email'));

        return $status === Password::RESET_LINK_SENT
            ? response()->json(['message' => 'Password reset link sent'])
            : response()->json(['message' => 'Unable to send reset link'], 500);
    }

    public function resetPassword(Request $request) {
        $this->validate($request, [
            'email' => 'required|email',
            'token' => 'required',
            'password' => 'required|confirmed|min:6',
        ]);

        // Attempt to reset the password
        $status = Password::reset(
            $request->only('email', 'password', 'password_confirmation', 'token'),
            function ($user, $password) {
                $user->password = Hash::make($password);
                $user->save();
            }
        );

        return $status === Password::PASSWORD_RESET
            ? response()->json(['message' => 'Password successfully reset'])
            : response()->json(['message' => 'Failed to reset password'], 500);
    }


    public function sendVerificationEmail(Request $request) {
        $user = Auth::user();
    
        if ($user->hasVerifiedEmail()) {
            return response()->json(['message' => 'Already verified']);
        }
    
        $user->sendEmailVerificationNotification();
    
        return response()->json(['message' => 'Verification link sent']);
    }
    
    public function verifyEmail(Request $request) {
        $user = User::find($request->id);
    
        if ($user->markEmailAsVerified()) {
            event(new Verified($user));
        }
    
        return response()->json(['message' => 'Email successfully verified']);
    }
    
    
}
