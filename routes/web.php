<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\OffersController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\LoveItController;
use App\Http\Controllers\NotificationsController;
use App\Http\Controllers\RequestPropertyController;
use App\Http\Controllers\MessengerController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\FilterController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\NeighborhoodController;






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









    

Route::group(['prefix' => LaravelLocalization::setLocale(), 'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]], function(){
    
    Auth::routes();
    Route::get('pledge', [OffersController::class, 'pledge']);

    
    Route::get('filter', [FilterController::class, 'index']);
    Route::post('search.filter', [FilterController::class, 'search'])->name("search.filter");
    Route::get('ajax.get.city.neighborhood', [App\Http\Controllers\OffersController::class, 'get_neighborhood']);

    Route::get('send.report/{id}/{text}/{type}', [ReportController::class, 'store']);
    Route::get('store.love/{id}', [LoveItController::class, 'store']);
    Route::get('love.it', [LoveItController::class, 'index']);
    Route::get('request.property', [RequestPropertyController::class, 'index']);

    Route::get('search', [SearchController::class, 'index']);
    Route::post('search.form', [SearchController::class, 'search'])->name("search.form");




    Route::group(["middleware" => "auth"], function () {

        Route::get('/home', [App\Http\Controllers\HomeController::class, 'home'])->name('home');
        Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');


        /********************** المدن ***********************/
        Route::get('city', [CityController::class, 'index']);
        Route::post('store.city', [CityController::class, 'store'])->name("store.city");
        Route::get('delete.city/{id}', [CityController::class, 'delete']);
        /********************** المدن ***********************/


        /********************** الحي ***********************/
        Route::get('neighborhood/{id}', [NeighborhoodController::class, 'index']);
        Route::post('store.neighborhood', [NeighborhoodController::class, 'store'])->name("store.neighborhood");
        Route::get('delete.neighborhood/{id}', [NeighborhoodController::class, 'delete']);
        /********************** الحي ***********************/



        Route::get('/edit.contact', [App\Http\Controllers\ContactController::class, 'edit']);
        Route::post('/update.contact', [App\Http\Controllers\ContactController::class, 'update'])->name("update.contact");

        Route::get('/edit.about', [App\Http\Controllers\AboutController::class, 'edit']);
        Route::post('/update.about', [App\Http\Controllers\AboutController::class, 'update'])->name("update.about");

        Route::get('newsletter', [App\Http\Controllers\NewsletterController::class, 'index']);

        Route::get('offers', [App\Http\Controllers\OffersController::class, 'index']);
        Route::get('create', [App\Http\Controllers\OffersController::class, 'create']);
        Route::post('store.offer', [App\Http\Controllers\OffersController::class, 'store'])->name("store.offer");
        Route::get('edit.offer/{id}', [App\Http\Controllers\OffersController::class, 'edit']);
        Route::post('update.offer', [App\Http\Controllers\OffersController::class, 'update'])->name("update.offer");
        //Route::get('delete.offer/{id}', [App\Http\Controllers\OffersController::class, 'delete']);
        Route::get('delete.gallery/{id}', [App\Http\Controllers\OffersController::class, 'delete_gallery']);
        Route::get('delete.picture.offer/{id}', [App\Http\Controllers\OffersController::class, 'delete_pictur']);





        
        Route::get('report.offers', [ReportController::class, 'report_offers']);
        Route::get('report.users', [ReportController::class, 'report_users']);



        Route::get('my.request.property', [RequestPropertyController::class, 'my_request']);
        Route::post('store.request.property', [RequestPropertyController::class, 'store'])->name("store.request.property");
        Route::get('edit.request.property/{id}', [RequestPropertyController::class, 'edit']);
        Route::post('update.request.property', [RequestPropertyController::class, 'update'])->name("update.request.property");
        Route::get('delete.request.property/{id}', [RequestPropertyController::class, 'delete']);
        Route::get('delete.request.property.offer/{id}', [RequestPropertyController::class, 'delete_offer']);
        Route::get('single.request.property/{id}', [RequestPropertyController::class, 'single']);
        Route::post('store.offer.request.property', [RequestPropertyController::class, 'store_offer'])->name("store.offer.request.property");


    Route::get('my.ad', [App\Http\Controllers\OffersController::class, 'my_ad']);
    Route::get('chat/{user}/{responsible}/{ad}', [MessengerController::class, 'index']);
    Route::get('all.message', [MessengerController::class, 'all']);
    Route::get('get.chat', [MessengerController::class, 'allMessage']);
    Route::get('send.message', [MessengerController::class, 'store']);
    Route::get('delete.picture', [OfferController::class, 'delete_picture']);
    Route::get('delete.offer/{id}', [OffersController::class, 'delete_offer']);
    Route::get('advertiser/{id}', [OffersController::class, 'advertiser']);
    Route::get('acount', [UsersController::class, 'acount']);
    
    });

    Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::get('/category/{id}', [App\Http\Controllers\HomeController::class, 'category']);
    Route::get('/contact', [App\Http\Controllers\HomeController::class, 'contact']);
    Route::get('/about', [App\Http\Controllers\HomeController::class, 'about']);
    Route::get('single.offer/{id}', [App\Http\Controllers\HomeController::class, 'single']);
    Route::post('/send.email', [App\Http\Controllers\ContactController::class, 'update'])->name("update.contact");
    Route::get('store.newsletter/{email}', [App\Http\Controllers\NewsletterController::class, 'store']);










    





    /****************** الاقسام ********************/
    // قسم 
    Route::get('category', [CategoryController::class, 'index']);
    // اضافة قسم جديد 
    Route::post('store.category', [CategoryController::class, 'store'])->name("store.category");
    // تحديث قسم  
    Route::post('update.category', [CategoryController::class, 'update'])->name("update.category");
    // استدعاء بيانات القسم 
    Route::get('ajax.edit.category', [CategoryController::class, 'edit']);
    /****************** الاقسام ********************/


    /****************** الاقسام الفرعية ********************/
    // قسم 
    Route::get('sub.category/{id}', [SubCategoryController::class, 'index']);
    // اضافة قسم جديد 
    Route::post('store.sub.category', [SubCategoryController::class, 'store'])->name("store.sub.category");
    // تحديث قسم  
    Route::post('update.sub.category', [SubCategoryController::class, 'update'])->name("update.sub.category");
    // استدعاء بيانات القسم 
    Route::get('ajax.edit.sub.category', [SubCategoryController::class, 'edit']);
    /****************** الاقسام الفرعية ********************/


    /****************** الاقسام الفرعية ********************/
    // قسم 
    Route::get('sub.sub.category/{id}', [Sub_SubCategoryController::class, 'index']);
    // اضافة قسم جديد 
    Route::post('store.sub.sub.category', [Sub_SubCategoryController::class, 'store'])->name("store.sub.sub.category");
    // تحديث قسم  
    Route::post('update.sub.sub.category', [Sub_SubCategoryController::class, 'update'])->name("update.sub.sub.category");
    // استدعاء بيانات القسم 
    Route::get('ajax.edit.sub.sub.category', [Sub_SubCategoryController::class, 'edit']);
    /****************** الاقسام الفرعية ********************/


    /****************** دردشة الاعضاء ********************/
    // استدعاء الدردشة 
    Route::get('chat/{user}/{responsible}/{ad}', [MessengerController::class, 'index']);
    // استدعاء الدردشة بواسطة اجاكس
    Route::get('get.chat', [MessengerController::class, 'allMessage']);

    // اضافة قسم جديد 
    Route::get('send.message', [MessengerController::class, 'store']);
    /****************** دردشة الاعضاء ********************/




/*================================ الحسابات =================================*/
Route::get('users', [UsersController::class, 'users']);
Route::post('store.user', [UsersController::class, 'store'])->name('store.user');
Route::get('ajax.edit.user', [UsersController::class, 'edit']);
Route::post('update.acount', [UsersController::class, 'update'])->name('update.acount');
Route::get('delete.user/{id}', [UsersController::class, 'delete']);
/*================================ الحسابات =================================*/

/*================================ الحسابات =================================*/
Route::get('all.terms/{type}', [TermsController::class, 'all']);
Route::post('store.terms', [TermsController::class, 'store'])->name('store.terms');
Route::get('ajax.edit.terms', [TermsController::class, 'edit']);
Route::post('update.terms', [TermsController::class, 'update'])->name('update.terms');
Route::get('delete.user/{id}', [TermsController::class, 'delete']);
/*================================ الحسابات =================================*/


/****************** الاشتركات ********************/
Route::get('all.plans', [PlansController::class, 'all']);
Route::post('store.plan', [PlansController::class, 'store'])->name("store.plan");
Route::post('update.plan', [PlansController::class, 'update'])->name("update.plan");
Route::get('ajax.edit.plan', [PlansController::class, 'edit']);
/****************** الاقسام ********************/



Route::get('all.subscribe', [SubscribeController::class, 'index']);
Route::get('store.user.subscribe', [SubscribeController::class, 'store']);
Route::get('approve.subscribe.plan', [SubscribeController::class, 'approve_subscribe_plan']);
Route::get('wating.subscribe.plan', [SubscribeController::class, 'wating_subscribe_plan']);







Route::post('store.notifications', [NotificationsController::class, 'store'])->name("store.notifications");
Route::get('notifications', [NotificationsController::class, 'index']);




});
