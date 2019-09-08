<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Neighborhood extends Model
{
    public function city()
    {
        return $this->belongsTo(City::class);
    }

    public function places()
    {
        return $this->hasMany(Place::class);
    }
}
