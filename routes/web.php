<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\site\HomeController;

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

include('admin.php');

Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('config:cache');
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('route:clear');
    $exitCode = Artisan::call('view:clear');
    $exitCode = Artisan::call('cache:clear');
    
    return "Your all Cache is cleared";
});

Route::group(['namespace' => 'site', 'as' => 'site.'], function () {
	Route::get('/', function () {
		return redirect('/'.App::getLocale());
	});

	$locales = ['en','de'];
	foreach ($locales as $locale) {
		Route::group(['prefix' => $locale, 'as'=>$locale.'.'], function() {
			
			Route::controller(HomeController::class)->group(function(){
				Route::get('/', 'index')->name('index');
			});
		});
	}
});