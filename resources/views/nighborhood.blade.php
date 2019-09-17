@extends('layouts.app')
@section('title', 'Barrios')
@section('content')
<section class="hero-home dark-overlay mb-5"><img src="/storage/{{ $neighborhood->header }}" alt="" class="bg-image">
  <div class="container py-7">
    <div class="overlay-content text-center text-white">
      <h1 class="display-3 text-serif font-weight-bold text-shadow mb-0">Qué onda con {{ $neighborhood->name }}</h1>
    </div>
  </div>
</section>
<section>
  <div class="container">
    <div class="row">
      <div class="col-xl-8 col-lg-10 mx-auto">           
        <p class="lead mb-5">{!! nl2br($neighborhood->description) !!}</p>
      </div>
    </div>
    <div class="row">
      <div class="col-xl-10 mx-auto"><img src="/storage/{{ $neighborhood->photo }}" alt="" class="img-fluid mb-2"></div>
    </div>
  </div>
</section>
@endsection