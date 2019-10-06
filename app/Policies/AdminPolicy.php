<?php


namespace App\Policies;

use App\Role;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class AdminPolicy
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

    public function view(User $user)
    {
        return $user->hasRole(Role::ADMIN);
    }

    public function update(User $user)
    {
        return $user->hasRole(Role::ADMIN);
    }

    public function delete(User $user)
    {
        return $user->hasRole(Role::ADMIN);
    }

    public function restore(User $user)
    {
        return $user->hasRole(Role::ADMIN);
    }

    public function forceDelete(User $user)
    {
        return $user->hasRole(Role::ADMIN);
    }
}