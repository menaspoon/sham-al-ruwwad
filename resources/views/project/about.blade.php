@extends('master')
@section('content')



  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML UPPER PAGE ------------------------------>
  <!-------------------------------------------------------------------------------------->
  <div class="upper-page wow animate__animated animate__backInUp" >
    <div class="container">
      <a href="/"> {{ __("public.nav_home") }} </a> |   {{ __("public.nav_about") }}
    </div>
  </div>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML UPPER PAGE ------------------------------>
  <!-------------------------------------------------------------------------------------->

<!--
  https://www.radiustheme.com/demo/wordpress/themes/homlisti/home-2/
-->

  <br><br><br>

  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML HEADER ---------------------------------->
  <!-------------------------------------------------------------------------------------->
  <div class="about wow animate__animated animate__slideInUp" >
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-sm-12 col-md-12 col-lg-5 col-xl-5">
          <img width="100%" class="about_img" src="https://www.radiustheme.com/demo/wordpress/themes/homlisti/wp-content/uploads/2021/12/home5-promo-image.png" alt="">
        </div>
        <div class="col-12 col-sm-12 col-md-12 col-lg-7 col-xl-7">
          <span>{{ __("public.about_about") }}</span>
          <h3>{{ __("public.about_title") }}</h3>
          <p>{{ app()->getLocale() == 'ar' ? $data->about_ar : $data->about_en  }}</p>
          <br><br>
          <div class="row">
            <div class="col-md-6">
              <h4> {{ __("public.about_vision") }} </h4>
              <p>{{ app()->getLocale() == 'ar' ? $data->vision_ar : $data->vision_en  }}</p>
            </div>
            <div class="col-md-6">
              <h4> {{ __("public.about_mission") }} </h4>
              <p>{{ app()->getLocale() == 'ar' ? $data->mission_ar : $data->mission_en  }}</p>
            </div>
          </div>
          <a href="/contact"> {{ __("public.nav_contact") }} </a>
        </div>



        <div class="manage col-md-12 col-lg-8 col-xl-7 wow animate__animated animate__slideInUp">
          <div class="FlexBox">
            <div>
              <br>
              <h4>{{ __("public.about_manage") }}</h4>
              <p>{{ app()->getLocale() == 'ar' ? $data->manage_ar : $data->manage_en  }}</p>
            </div>
            <img src="{{ asset('public/manage.jpg') }}" alt="">
          </div>
        </div>


      </div>
    </div>
  </div>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML HEADER ---------------------------------->
  <!-------------------------------------------------------------------------------------->



  




  @endsection