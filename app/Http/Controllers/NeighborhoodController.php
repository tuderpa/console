<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Neighborhood;

class NeighborhoodController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index($city, $neighborhoodSlug)
    {   
        $neighborhood = Neighborhood::where('slug', $neighborhoodSlug)->get();
        return view('nighborhood', ['neighborhood' => $neighborhood[0]]);
    }
}
