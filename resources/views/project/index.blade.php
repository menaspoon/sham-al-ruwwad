@extends('master')
@section('content')


  <div class="header wow animate__animated animate__backInUp">
    <div class="overlay">
            <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-8">
          <h1 class="wow animate__animated animate__fadeInDownBig">  {{ __('public.header_h2') }}  </h1>


          <div class="category">
            @foreach($category as $item)
              <a href="/category/{{ $item->id}}">
                <span> {{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }}  </span>
                <i class="fal fa-home"></i>
              </a>
            @endforeach
          </div>


          <p>{{ __('public.header_p') }} </p>
          <a class="about-home" href="/about">{{ __('public.header_a') }} </a>
          <a class="contact-home" href="tel:{{ $contact->phone1}}"><i class="fas fa-phone-alt"></i></a>
        </div>
      </div>
    </div>
    </div>
  </div>







  <div class="searices wow animate__animated animate__backInUp">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-sm-6 col-md-4">
          <img src="{{ asset('public/asset/img/home_hand_3-1.svg') }}" alt="">
          <h5>{{ __('public.sear_perfect') }}</h5>
          <p> {{ __('public.sear_perfect_p') }} </p>
        </div>
        <div class="col-12 col-sm-6 col-md-4">
          <img src="{{ asset('public/asset/img/Secure-Payment-1.svg') }}" alt="">
          <h5>{{ __('public.sear_services') }}</h5>
          <p> {{ __('public.sear_services_p') }} </p>
        </div>
        <div class="col-12 col-sm-6 col-md-4">
          <img src="{{ asset('public/asset/img/secure_home_3-1.svg') }}" alt="">
          <h5>{{ __('public.sear_payment') }}</h5>
          <p> {{ __('public.sear_payment_p') }} </p>
        </div>
      </div>
    </div>
  </div>


<div class="offers wow animate__animated animate__backInUp">
  <div class="container">
    <div class="row">



      @foreach ($offers as $item)
      <div  class="col-12 col-sm-12 col-md-6 col-lg-4">

        @if($item->picture == null || $item->picture == "" || $item->picture == " ")
            <div class="box" style="background: url({{ asset('/public/offers/' . 'default1.jpg') }});">
        @else
            <div class="box" style="background: url({{ asset('/public/offers/'.$item->picture) }});">
        @endif
          <div class="content">
        @if($item->category)
          <div class="popup"> {{ $item->category_ar  }} </div>
        @endif
        @if($item->status)
            <div class="pay"> {{ $item->status_ar  }} </div>
        @endif
            <div class="price"> {{ $item->price }} {{ app()->getLocale() == 'ar' ? $item->currency_ar : $item->currency_en  }}  </div>
            <h3><a href="/single.offer/{{ $item->id }}">  <?php echo substr_replace($item->name_ar, "...", 70) ?> </a></h3>
            <div class="FlexBox">
              <div> <i class="fal fa-ruler-combined"></i> {{ $item->sqft }} </div>
              <div> <i class="fal fa-bath"></i> {{ $item->bath }} </div>
              <div> <i class="fal fa-bed"></i> {{ $item->bedroom }} </div>
            </div>
          </div>
        </div>
      </div>
      @endforeach



    </div>
  </div>
</div>









<div class="feature wow animate__animated animate__backInUp">
  <div class="container">
    <div class="row">
      <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-7"></div>
      <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-5">
        <div class="box">

          <div class="FlexBox">
            <img src="{{ asset('public/asset/img/pi1.PNG') }}" alt="">
            <div>
              <strong>{{ __('public.feat_1') }}</strong>
              <p>{{ __('public.feat_1p') }}</p>
            </div>
          </div>

          <div class="FlexBox">
            <img src="{{ asset('public/asset/img/pi2.PNG') }}" alt="">
            <div>
              <strong>{{ __('public.feat_2') }}</strong>
              <p>{{ __('public.feat_2p') }}</p>
            </div>
          </div>

          <div class="FlexBox">
            <img src="{{ asset('public/asset/img/pi3.PNG') }}" alt="">
            <div>
              <strong>{{ __('public.feat_3') }}</strong>
              <p>{{ __('public.feat_3p') }}</p>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>







<div class="Newsletter wow  animate__animated animate__backInUp animate__repeat-2">
  <div class="container">
    <h2> {{ __('public.news_h2') }} </h2>
    <div class="row justify-content-center">
      <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <input type="text" placeholder="{{ __('public.news_email') }}">
        <button>{{ __('public.news_submit') }}</button>
      </div>
      <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
        <h3>{{ __('public.news_news') }}</h3>
        <p>{{ __('public.news_p') }}</p>
      </div>
    </div>
  </div>
</div>





@endsection

  






