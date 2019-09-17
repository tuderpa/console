@extends('layouts.app')
@section('title', 'Home')
@section('content')
<section class="hero-home">
      <div class="swiper-container hero-slider">
        <div class="swiper-wrapper dark-overlay">
          <div style="background-image:url(./assets/pages/img/photo/photo-1501621965065-c6e1cf6b53e2.jpg)" class="swiper-slide"></div>
          <div style="background-image:url(./assets/pages/img/photo/photo-1519974719765-e6559eac2575.jpg)" class="swiper-slide"></div>
          <div style="background-image:url(./assets/pages/img/photo/photo-1490578474895-699cd4e2cf59.jpg)" class="swiper-slide"></div>
          <div style="background-image:url(./assets/pages/img/photo/photo-1534850336045-c6c6d287f89e.jpg)" class="swiper-slide"></div>
        </div>
      </div>
      <div class="container py-6 py-md-7 text-white z-index-20">
        <div class="row">
          <div class="col-xl-10">
            <div class="text-center text-lg-left">
              <p class="subtitle letter-spacing-4 mb-2 text-secondary text-shadow">The best holiday experience</p>
              <h1 class="display-3 font-weight-bold text-shadow">Stay like a local</h1>
            </div>
            <div class="search-bar mt-5 p-3 p-lg-1 pl-lg-4">
              <form action="#">
                <div class="row">
                  <div class="col-lg-4 d-flex align-items-center form-group">
                    <input type="text" name="search" placeholder="What are you searching for?" class="form-control border-0 shadow-0">
                  </div>
                  <div class="col-lg-3 d-flex align-items-center form-group">
                    <div class="input-label-absolute input-label-absolute-right w-100">
                      <label for="location" class="label-absolute"><i class="fa fa-crosshairs"></i><span class="sr-only">City</span></label>
                      <input type="text" name="location" placeholder="Location" id="location" class="form-control border-0 shadow-0">
                    </div>
                  </div>
                  <div class="col-lg-3 d-flex align-items-center form-group no-divider">
                    <select title="Categories" data-style="btn-form-control" class="selectpicker">
                      <option value="small">Restaurants</option>
                      <option value="medium">Hotels</option>
                      <option value="large">Cafes</option>
                      <option value="x-large">Garages</option>
                    </select>
                  </div>
                  <div class="col-lg-2">
                    <button type="submit" class="btn btn-primary btn-block rounded-xl h-100">Search </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-6">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-primary">Barrios más populares en</p>
            <h2>Buenos Aires</h2>
          </div>
          <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a href="category.html" class="text-muted text-sm">
              See all cities<i class="fas fa-angle-double-right ml-2"></i></a></div>
        </div>
        <div class="row">
        @foreach ($neighborhoods as $neighborhood)
          
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-{{ $neighborhood->size }}">
            <div style="background: center center url(./assets/pages/img/publicaciones/mural.png) no-repeat; background-size: cover;" class="card shadow-lg border-0 w-100 border-0"><a href="./explorar/{{ $neighborhood->city->slug }}/{{ $neighborhood->slug }}" class="tile-link"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">{{ $neighborhood->name }}</h3>
              </div>
            </div>
          </div>

        @endforeach
    </section>
    <section class="py-6 bg-white">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-primary">Stay and eat like a local</p>
            <h2>Our guides</h2>
          </div>
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a href="category.html" class="text-muted text-sm">
               
              See all guides<i class="fas fa-angle-double-right ml-2"></i></a></div>
        </div>
        <div class="row">
          <div class="swiper-container guides-slider">
            <!-- Additional required wrapper-->
            <div class="swiper-wrapper pb-5">
              <!-- Slides-->
              <div class="swiper-slide h-auto px-2">
                <div class="card card-poster gradient-overlay mb-4 mb-lg-0"><a href="category.html" class="tile-link"></a><img src="./assets/pages/img/photo/new-york.jpg" alt="Card image" class="bg-image">
                  <div class="card-body overlay-content">
                    <h6 class="card-title text-shadow text-uppercase">New York</h6>
                    <p class="card-text text-sm">The big apple</p>
                  </div>
                </div>
              </div>
              <div class="swiper-slide h-auto px-2">
                <div class="card card-poster gradient-overlay mb-4 mb-lg-0"><a href="category.html" class="tile-link"></a><img src="./assets/pages/img/photo/paris.jpg" alt="Card image" class="bg-image">
                  <div class="card-body overlay-content">
                    <h6 class="card-title text-shadow text-uppercase">Paris</h6>
                    <p class="card-text text-sm">Artist capital of Europe</p>
                  </div>
                </div>
              </div>
              <div class="swiper-slide h-auto px-2">
                <div class="card card-poster gradient-overlay mb-4 mb-lg-0"><a href="category.html" class="tile-link"></a><img src="./assets/pages/img/photo/barcelona.jpg" alt="Card image" class="bg-image">
                  <div class="card-body overlay-content">
                    <h6 class="card-title text-shadow text-uppercase">Barcelona</h6>
                    <p class="card-text text-sm">Dalí, Gaudí, Barrio Gotico</p>
                  </div>
                </div>
              </div>
              <div class="swiper-slide h-auto px-2">
                <div class="card card-poster gradient-overlay mb-4 mb-lg-0"><a href="category.html" class="tile-link"></a><img src="./assets/pages/img/photo/prague.jpg" alt="Card image" class="bg-image">
                  <div class="card-body overlay-content">
                    <h6 class="card-title text-shadow text-uppercase">Prague</h6>
                    <p class="card-text text-sm">City of hundred towers</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-pagination d-md-none"> </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-6 bg-gray-100"> 
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-secondary">Hurry up, these are expiring soon.        </p>
            <h2>Last minute deals</h2>
          </div>
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a href="category.html" class="text-muted text-sm">
               
              See all deals<i class="fas fa-angle-double-right ml-2"></i></a></div>
        </div>
        <!-- Slider main container-->
        <div data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}" class="swiper-container swiper-container-mx-negative swiper-init">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e33b1527bfe2abaf92" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="./assets/pages/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room" class="img-fluid"/><a href="detail-rooms.html" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="./assets/pages/img/avatar/avatar-0.jpg" alt="Pamela" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Pamela</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="javascript: void();" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="detail-rooms.html" class="text-decoration-none text-dark">Modern, Well-Appointed Room</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$80</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e322f3375db4d89128" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="./assets/pages/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent" class="img-fluid"/><a href="detail-rooms.html" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="./assets/pages/img/avatar/avatar-7.jpg" alt="John" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">John</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="javascript: void();" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="detail-rooms.html" class="text-decoration-none text-dark">Cute Quirky Garden apt, NYC adjacent</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$121</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e3a31e62979bf147c9" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="./assets/pages/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!" class="img-fluid"/><a href="detail-rooms.html" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="./assets/pages/img/avatar/avatar-8.jpg" alt="Julie" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Julie</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="javascript: void();" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="detail-rooms.html" class="text-decoration-none text-dark">Modern Apt - Vibrant Neighborhood!</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$75</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e3503eb77d487e8082" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="./assets/pages/img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment" class="img-fluid"/><a href="detail-rooms.html" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="./assets/pages/img/avatar/avatar-9.jpg" alt="Barbora" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Barbora</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="javascript: void();" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="detail-rooms.html" class="text-decoration-none text-dark">Sunny Private Studio-Apartment</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Shared room</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$93</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e39aa2eed0626e485d" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="./assets/pages/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise" class="img-fluid"/><a href="detail-rooms.html" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="./assets/pages/img/avatar/avatar-10.jpg" alt="Jack" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Jack</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="javascript: void();" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="detail-rooms.html" class="text-decoration-none text-dark">Mid-Century Modern Garden Paradise</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire house</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$115</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e39aa2edasd626e485d" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="./assets/pages/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan" class="img-fluid"/><a href="detail-rooms.html" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="./assets/pages/img/avatar/avatar-11.jpg" alt="Stuart" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Stuart</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="javascript: void();" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="detail-rooms.html" class="text-decoration-none text-dark">Brooklyn Life, Easy to Manhattan</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$123</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- If we need pagination-->
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </section>
    
    <section class="py-6 bg-gray-100"> 
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-secondary">Stories from around the globe</p>
            <h2>From our travel blog</h2>
          </div>
          <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a href="blog.html" class="text-muted text-sm">
               
              See all articles<i class="fas fa-angle-double-right ml-2"></i></a></div>
        </div>
        <div class="row">
          <!-- blog item-->
          <div class="col-lg-4 col-sm-6 mb-4">
            <div class="card shadow border-0 h-100"><a href="post.html"><img src="./assets/pages/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="..." class="img-fluid card-img-top"/></a>
              <div class="card-body"><a href="#" class="text-uppercase text-muted text-sm letter-spacing-2">Travel </a>
                <h5 class="my-2"><a href="post.html" class="text-dark">Autumn fashion tips and tricks          </a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="far fa-clock mr-2"></i>January 16, 2016</p>
                <p class="my-2 text-muted text-sm">Pellentesque habitant morbi tristique senectus. Vestibulum tortor quam, feugiat vitae, ultricies ege...</p><a href="post.html" class="btn btn-link pl-0">Read more<i class="fa fa-long-arrow-alt-right ml-2"></i></a>
              </div>
            </div>
          </div>
          <!-- blog item-->
          <div class="col-lg-4 col-sm-6 mb-4">
            <div class="card shadow border-0 h-100"><a href="post.html"><img src="./assets/pages/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="..." class="img-fluid card-img-top"/></a>
              <div class="card-body"><a href="#" class="text-uppercase text-muted text-sm letter-spacing-2">Living </a>
                <h5 class="my-2"><a href="post.html" class="text-dark">Newest photo apps          </a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="far fa-clock mr-2"></i>January 16, 2016</p>
                <p class="my-2 text-muted text-sm">ellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibu...</p><a href="post.html" class="btn btn-link pl-0">Read more<i class="fa fa-long-arrow-alt-right ml-2"></i></a>
              </div>
            </div>
          </div>
          <!-- blog item-->
          <div class="col-lg-4 col-sm-6 mb-4">
            <div class="card shadow border-0 h-100"><a href="post.html"><img src="./assets/pages/img/photo/photo-1482463084673-98272196658a.jpg" alt="..." class="img-fluid card-img-top"/></a>
              <div class="card-body"><a href="#" class="text-uppercase text-muted text-sm letter-spacing-2">Travel </a>
                <h5 class="my-2"><a href="post.html" class="text-dark">Best books about Photography          </a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="far fa-clock mr-2"></i>January 16, 2016</p>
                <p class="my-2 text-muted text-sm">Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.  Mauris placerat eleif...</p><a href="post.html" class="btn btn-link pl-0">Read more<i class="fa fa-long-arrow-alt-right ml-2"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Instagram-->
    <section>
      <div class="container-fluid px-0">
        <div class="swiper-container instagram-slider">
          <div class="swiper-wrapper">
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-1.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-2.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-3.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-4.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-5.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-6.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-7.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-8.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-9.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-10.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-11.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-12.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-13.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img src="./assets/pages/img/instagram/instagram-14.jpg" alt="" class="img-fluid hover-scale"></a></div>
          </div>
        </div>
      </div>
    </section>
@endsection