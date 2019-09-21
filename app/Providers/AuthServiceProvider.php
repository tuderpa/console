<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Organization' => 'App\Policies\AdminPolicy',
        'App\City' => 'App\Policies\AdminPolicy',
        'App\Country' => 'App\Policies\AdminPolicy',
        'App\Neighborhood' => 'App\Policies\AdminPolicy',
        'App\Place' => 'App\Policies\AdminPolicy',
        'App\User' => 'App\Policies\AdminPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //
    }
}
