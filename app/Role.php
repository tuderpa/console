<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    const ADMIN = 'admin';
    const USER = 'user';

    public function users()
    {
        return $this->belongsToMany(User::class)->withTimestamps();
    }
}
