<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AppartmentController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\TomTomController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('web', 'auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    
    // APPARTAMENTI
    Route::resource('appartments', AppartmentController::class); 

    // SERVIZI
Route::resource('services', ServiceController::class); 
Route::put('services/{service}/restore', [ServiceController::class, 'restore'])->name('services.restore');
Route::delete('services/{service}/force-delete', [ServiceController::class, 'forceDelete'])->name('services.forceDelete');

    //MESSAGGI
Route::resource('messages', MessageController::class);

Route::post('/send-reply/{message}', 'MessageController@sendReply')->name('send-reply');


// TOMTOM
Route::get('/tomtom/getGeoData/{address}', [TomTomController::class, 'getGeoData'])->name('tomtom.getGeoData');
});



require __DIR__.'/auth.php';