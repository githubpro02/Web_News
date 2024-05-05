<?php

use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\ResetPasswordController;
use App\Http\Controllers\BinhLuanController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\ProperticategoryController;
use App\Http\Controllers\TintucController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
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
/* Route User */
Route::get('/', [IndexController::class, 'index'])->name('home');

Route::get('/danh-muc-{slug}', [IndexController::class, 'danhmuc'])->name('danh-muc');

Route::get('/bai-viet-{slug}', [IndexController::class, 'detail'])->name('bai-viet');

Route::get('/tintucmoinhat', [IndexController::class, 'tintucmoinhat']);
Route::get('/tinnong', [IndexController::class, 'tinnong']);
Route::get('/xemnhieunhat', [IndexController::class, 'xemnhieunhat']);
Route::get('/properti/{propertiesCategory}', [IndexController::class, 'properti']);
Route::get('/category/{category}', [IndexController::class, 'category']);
Route::get('/tag/{tag}', [IndexController::class, 'tag']);

Route::post('/binhluan-{tin}-{user}', [IndexController::class, 'binhluan'])->name('binhluan');
Route::post('/like', [IndexController::class, 'like'])->name('like');
Route::post('/search', [IndexController::class, 'search']);

Route::get('/error/404', [IndexController::class, 'ero'])->name('404');
Route::get('/new/coming', [IndexController::class, 'coming'])->name('coming');
Route::get('/about', [IndexController::class, 'about'])->name('about');

Route::get('/report{id}', [IndexController::class, 'report'])->name('report');

/* Route Đăng nhập */
// Route hiển thị form đăng nhập
Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');

// Route xử lý đăng nhập
Route::post('/login', [LoginController::class, 'processLogin']);

Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register');

// Route xử lý đăng kí
Route::post('/register', [RegisterController::class, 'processRegistration']);

// Route reset password
Route::get('/forgotpassword', [ForgotPasswordController::class, 'showForgotPassword'])->name('forgot-password');

Route::post('/forgotpassword', [ForgotPasswordController::class, 'forgotPassword']);

Route::get('/resetpassword/{token}', [ResetPasswordController::class, 'showResetForm'])->name('reset-password');
Route::post('/resetpassword/{token}', [ResetPasswordController::class, 'resetPassword']);


/* Route Admin */

Route::get('/home', [HomeController::class, 'index'])->name('home-admin');

Route::get('/dashboard', [HomeController::class, 'dashboard'])->name('dashboard');

Route::resource('danhmuc', CategoryController::class);
Route::resource('thuoctinhdanhmuc', ProperticategoryController::class);
Route::resource('user', UserController::class);
Route::resource('tintuc', TintucController::class);
Route::resource('binhluan', BinhLuanController::class);

Route::get('/trolai/{binhluan}', [BinhluanController::class, 'trolai'])->name('trolai');
Route::get('/destroy/{id}', [BinhLuanController::class,'destroy'])->name('destroy-comment');

Route::post('/duyet/{id}', [TintucController::class, 'duyet'])->name('duyet-bai');

Route::get('/tuchoi/{id}', [TintucController::class, 'tuchoi'])->name('tu-choi');

Route::post('/select-delivery', [TintucController::class, 'select_delivery']);

Route::post('/themvaitro', [UserController::class, 'themvaitro'])->name('themvaitro');
Route::post('/themquyen', [UserController::class, 'themquyen'])->name('themquyen');

Route::post('/timkiembaiviet', [TintucController::class, 'timkiembaiviet']);

Route::post('/tieptucthem', [PropertiCategoryController::class, 'tieptucthem']);
Route::post('/taobaiviet', [TintucController::class, 'taobaiviet']);