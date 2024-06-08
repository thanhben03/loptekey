<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\KeyController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

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

Route::get('/home', [HomeController::class, 'home'])->middleware(['auth', 'verified'])->name('home');
Route::get('/bai-viet', [PostController::class, 'index'])->name('post');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::post('/buy-key', [KeyController::class, 'buyKey'])->name('buyKey');
    Route::post('/posts', [PostController::class, 'store'])->name('posts.store');
});

Route::get('/main-post', [PostController::class, 'mainPost'])->name('mainPost');
Route::post('like-post', [PostController::class, 'likePost'])->name('likePost');

require __DIR__.'/auth.php';
