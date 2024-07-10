<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\KeyController;
use App\Http\Controllers\PaymentController;
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


Route::get('/', [HomeController::class, 'home'])->middleware(['auth', 'verified'])->name('home');
Route::get('/charge', [HomeController::class, 'charge'])->middleware(['auth', 'verified'])->name('charge');
Route::get('/bai-viet', [PostController::class, 'index'])->name('post');
Route::get('/quan-ly-bai-dang', [PostController::class, 'managePost'])->name('managePost');
Route::get('/test', [PostController::class, 'test'])->name('managePost');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::post('/charge', [PaymentController::class, 'charge'])->name('profile.destroy');
    Route::get('/charge-success', [PaymentController::class, 'chargeSuccess'])->name('profile.destroy');

    Route::post('/buy-key', [KeyController::class, 'buyKey'])->name('buyKey');
    Route::post('/posts', [PostController::class, 'store'])->name('posts.store');
    Route::delete('/posts/{id}', [PostController::class, 'destroy'])->name('posts.delete');
    Route::get('/bai-viet/edit/{id}', [PostController::class, 'edit'])->name('posts.edit');
    Route::put('/bai-viet/update/{id}', [PostController::class, 'update'])->name('posts.update');
});

Route::get('/main-post', [PostController::class, 'mainPost'])->name('mainPost');
Route::get('/hide-post', [PostController::class, 'hidePost'])->name('hidePost');
Route::post('/like-post', [PostController::class, 'likePost'])->name('likePost');
Route::post('/get-comment/', [CommentController::class, 'getCommentByIdPost'])->name('getCommentByIdPost');
Route::post('/comment/', [CommentController::class, 'postComment'])->name('postComment');

require __DIR__.'/auth.php';
