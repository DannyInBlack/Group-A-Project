<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\userController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

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
    return view('welcome');
});

Auth::routes();

Route::get('/users', [App\Http\Controllers\userController::class, 'index'])->name('users.index');

Route::get('/users/{id}',  [userController::class, 'show'])->name('users.show');




Route::get('/posts', [App\Http\Controllers\HomeController::class, 'index'])->name('posts.index');

Route::get('/posts/create',  [HomeController::class, 'create'])->name('posts.create');

Route::get('/posts/deleted',  [HomeController::class, 'deleted'])->name('posts.deleted');

Route::put('/posts/deleted/{id}',  [HomeController::class, 'restore'])->name('posts.restore');

Route::get('/posts/create',  [HomeController::class, 'create'])->name('posts.create');

Route::post('/posts',  [HomeController::class, 'store'])->name('posts.store');

Route::get('/posts/{id}',  [HomeController::class, 'show'])->name('posts.show');

Route::get('/posts/{id}/edit',  [HomeController::class, 'edit'])->name('posts.edit');

Route::put('/posts/{id}',  [HomeController::class, 'update'])->name('posts.update');

Route::delete('/posts/{id}',  [HomeController::class, 'delete'])->name('posts.delete');



// Route::get('/storage',  [HomeController::class, 'storage'])->name('storage');

