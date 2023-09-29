<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\User;
use App\Models\Contact;
use App\Models\Notifications;
use App\Models\Chat\Messenger;

use View;
use DB;
use Auth;

class AppServiceProvider extends ServiceProvider {
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot() {
        View::composer('*', function($view){
            $view->with("user", User::where("id", Auth::id())->first());
            $view->with("contact", Contact::where("id", 1)->first());
            $view->with("notificationsCount", Notifications::where("user", Auth::id())->where("view", 0)->count());
            $view->with("countMessage", Messenger::where("user_view", Auth::id())->Where("view", 0)->count());

        });
    }
}

