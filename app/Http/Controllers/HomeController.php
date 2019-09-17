<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Neighborhood;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $neighborhoods = Neighborhood::where('highlighted', 1)->with('city')->orderBy('name', 'desc')->take(5)->get();
        return view('index', ['neighborhoods' => $neighborhoods]);
    }
}
