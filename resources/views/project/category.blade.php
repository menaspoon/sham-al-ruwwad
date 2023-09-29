@extends('master')
@section('content')

<style>
.header .overlay {
    padding: 140px;
    background: #0000007a;
}
</style>

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
          <a class="about-home" href="">{{ __('public.header_a') }} </a>
          <a class="contact-home" href=""><i class="fas fa-phone-alt"></i></a>
        </div>
      </div>
    </div>
    </div>
  </div>


<br><br>

<div class="offers wow animate__animated animate__backInUp">
  <div class="container">
    <div class="row">


      @foreach ($offers as $item)
      <a href="/single.offer/{{ $item->id }}" class="col-12 colsm-12 col-md-6 col-lg-4">
        <div class="box" style="background: url({{ asset('/public/offers/'.$item->picture) }});">
          @if($item->category_en != "other")
              <div class="popup"> {{ app()->getLocale() == 'ar' ? $item->category_ar : $item->category_en  }} </div>
          @endif
          <div class="content">
            @if($item->category)
              <div class="popup"> {{ $item->category_ar  }} </div>
            @endif
            @if($item->status)
                <div class="pay"> {{ $item->status_ar  }} </div>
            @endif
            <div class="price"> {{ $item->price }} ريال سعودي </div>
            <h3>{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }}</h3>
            <div class="FlexBox">
              <div> <i class="fal fa-ruler-combined"></i> {{ $item->sqft }} </div>
              <div> <i class="fal fa-bath"></i> {{ $item->bath }} </div>
              <div> <i class="fal fa-bed"></i> {{ $item->bedroom }} </div>
            </div>
          </div>
        </div>
      </a>
      @endforeach



    </div>
  </div>
</div>


@endsection
