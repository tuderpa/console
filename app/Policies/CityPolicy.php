<?php


namespace App\Policies;

use App\Role;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class CityPolicy
{
    use HandlesAuthorization;

    public function create(User $user)
    {
        return $user->hasRole(Role::ADMIN);
    }

    public function viewAny(User $user)
    {
        return $user->hasRole(Role::ADMIN);
    }
}