<?php

namespace App\Providers\v1;

use Illuminate\Support\ServiceProvider;

use App\Service\v1;

class PilgrimInfoServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(PilgrimInfoService::class, function($app) {
            return new PilgrimInfoService();
        });
    }
}
