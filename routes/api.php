<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ItemController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Auth\EmailVerificationRequest;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/



Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

Route::post('email/verify', [AuthController::class, 'sendVerificationEmail']);
Route::get('email/verify/{id}', [AuthController::class, 'verifyEmail']);

Route::post('forgot-password', [AuthController::class, 'forgotPassword']);
Route::post('reset-password', [AuthController::class, 'resetPassword']);

// Route for sending password reset link
Route::post('password/email', [AuthController::class, 'forgotPassword'])->name('password.email');

// Route for resetting the password
Route::post('password/reset', [AuthController::class, 'resetPassword'])->name('password.reset');

// Email verification routes
Route::middleware('auth:api')->group(function () {
    Route::get('email/verify/{id}/{hash}', function (EmailVerificationRequest $request) {
        $request->fulfill();
        return response()->json(['message' => 'Email successfully verified']);
    })->middleware(['signed'])->name('verification.verify');

    Route::post('email/resend', function (Request $request) {
        $request->user()->sendEmailVerificationNotification();
        return response()->json(['message' => 'Verification link sent']);
    })->middleware('throttle:6,1')->name('verification.send');
});

Route::group(['middleware' => ['auth:api']], function() {
    Route::get('profile', function() {
        return auth()->user();
    });

    // Protect admin routes
    Route::group(['middleware' => 'role:admin'], function() {
        Route::get('/admin/items/unapproved', [ItemController::class, 'unapprovedItems']);
        Route::put('/admin/items/{id}/approve', [ItemController::class, 'approve']);
        Route::put('/admin/items/{id}/reject', [ItemController::class, 'reject']);
        Route::delete('/admin/items/{id}', [ItemController::class, 'adminDestroy']);
    });
    
    

    // Protect user routes
    Route::group(['middleware' => 'role:user'], function() {
        Route::post('/items', [ItemController::class, 'store']);
        Route::get('/items', [ItemController::class, 'index']);
        Route::put('/items/{id}', [ItemController::class, 'update']);
        Route::delete('/items/{id}', [ItemController::class, 'destroy']);

    });
});
