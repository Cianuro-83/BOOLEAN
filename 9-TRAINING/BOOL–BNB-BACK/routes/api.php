<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AppartmentController;
use App\Http\Controllers\Api\MessageController;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();

});
Route::get('/appartments', [AppartmentController::class, 'index']);
Route::get('/appartments/{id}', [AppartmentController::class, 'show']);
Route::post('/messages', [MessageController::class, 'store']); 