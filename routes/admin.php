<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\admin\AuthController;
use App\Http\Controllers\admin\AccountController;

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::group(['namespace' => 'admin', 'prefix' => 'adminpanel', 'as' => 'admin.'], function () {

	Route::get('/', function () {
		return redirect('/adminpanel/'.App::getLocale());
	});

	$locales = ['en','de'];
	foreach ($locales as $locale) {	
		Route::group(['prefix' => $locale, 'as' => $locale.'.'], function() {
	
			Route::controller(AuthController::class)->group(function() {
				Route::any('/', 'index')->name('login');
				Route::any('/forgot-password', 'create')->name('forgot-password');
			});

			// Route::group(['middleware' => 'backend'], function () {
				Route::controller(AccountController::class)->group(function() {
					Route::any('/dashboard', 'dashboard')->name('dashboard');
					Route::any('/profile', 'profile')->name('profile');
				});
			// })
			

		});
	}

});