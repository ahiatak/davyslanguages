<?php

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

Route::get('/', 'HomeController@index')->name('home');

Auth::routes();


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

if(session('locale') != 'en' && session('locale') != 'fr' ){		
	session(['locale' => 'fr']);
}

Route::get('fr', 'HomeController@index');
Route::get('en', 'HomeController@index');

Route::prefix(session('locale'))->group(function () {
	Route::resources([
		'abouts' => 'AboutController',
		'services' => 'ServiceController',
		'learns' => 'LearnController',
		'galleries' => 'GalleryController',
		'teams' => 'TeamController',
		'posts' => 'PostController',
		'testimonials' => 'TestimonialController',
		'order-translations' => 'OrderTranslationController',
		'sections' => 'SectionController',
	]);

	Route::get('contacts', 'ContactController@index')->name('contacts.index');
	Route::post('davyslanguagescontacts', 'ContactController@store')->name('contacts.store');

});
