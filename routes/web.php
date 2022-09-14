<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\userController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

require __DIR__.'/auth.php';

Route::get('/posts', [HomeController::class,'index'])->name('posts.index');

Route::get('/posts/create',  [HomeController::class, 'create'])->name('posts.create');

Route::get('/posts/deleted',  [HomeController::class, 'deleted'])->name('posts.deleted');

Route::put('/posts/deleted/{id}',  [HomeController::class, 'restore'])->name('posts.restore');

Route::post('/posts',  [HomeController::class, 'store'])->name('posts.store');

Route::post('/posts/comments',  [HomeController::class, 'storeComment'])->name('posts.storeComment');

Route::post('/posts/like',  [HomeController::class, 'like'])->name('posts.like');

Route::get('/posts/{id}',  [HomeController::class, 'show'])->name('posts.show');

Route::get('/posts/{id}/edit',  [HomeController::class, 'edit'])->name('posts.edit');

Route::put('/posts/{id}',  [HomeController::class, 'update'])->name('posts.update');

Route::delete('/posts/{id}',  [HomeController::class, 'delete'])->name('posts.delete');
