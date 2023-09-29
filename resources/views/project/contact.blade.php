@extends('master')
@section('content')







  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML UPPER PAGE ------------------------------>
  <!-------------------------------------------------------------------------------------->
  <div class="upper-page wow animate__animated animate__slideInUp" >
    <div class="container">
      <a href=""> {{ __('public.nav_home') }} </a> | {{ __('public.nav_contact') }} 
    </div>
  </div>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML UPPER PAGE ------------------------------>
  <!-------------------------------------------------------------------------------------->

<!--
  https://www.radiustheme.com/demo/wordpress/themes/homlisti/home-2/
-->

<br><br>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML HEADER ---------------------------------->
  <!-------------------------------------------------------------------------------------->
  <div class="contact" >
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-7 wow animate__animated animate__slideInUp">
          <div class="form">
            <h3>{{ __("public.contact_ti_send") }}</h3>
            <p>{{ __("public.contact_ti_p") }}</p>
          <div class="row">
                <div class="col-12 col-sm-6 col-md-6"> <input id="username" type="text" placeholder="{{ __("public.contact_name") }}"> </div>
                <div class="col-12 col-sm-6 col-md-6"> <input id="email" type="text" placeholder="{{ __("public.contact_email") }}"> </div>
                <div class="col-12 col-sm-6 col-md-6"> <input id="phone"type="text" placeholder="{{ __("public.contact_phone") }}"> </div>
                <div class="col-12 col-sm-6 col-md-6"> <input id="subject" type="text" placeholder="{{ __("public.contact_subject") }}"> </div>
                <div class="col-md-12"> <textarea name="" id="message" cols="15" placeholder="{{ __("public.contact_message") }}" rows="5"></textarea> </div>
                <div class="col-md-12"> <button class="sendMessage"> {{ __("public.contact_send") }} </button> </div>
                <div class="col-md-12" id="alert">  </div>
              </div>
          </div>
        </div>
        <div class="col-md-12 col-lg-5 wow animate__animated animate__slideInUp">
          <h3>{{ __("public.contact_via") }}</h3>
          <p>{{ __("public.contact_vip") }}</p>
          <div class="box">
            <div class="FlexBox">
              <i class="far fa-map-marker-alt icon"></i>
              <div>
                <span>{{ __("public.contact_address") }}</span>
                <strong>{{ app()->getLocale() == 'ar' ? $data->address_ar : $data->address_en  }}</strong>
              </div>
            </div>
          </div>

          <div class="box ">
            <div class="FlexBox">
              <i class="fal fa-envelope-open icon"></i>
              <div>
                <span>{{ __("public.contact_email") }}</span>
                @if($data->email1 != "")
                  <strong> <a href="tel:{{ $data->email1 }}">{{ $data->email1 }}</a> </strong>
                @endif
                @if($data->email2 != "")
                  <strong> <a href="tel:{{ $data->email2 }}">{{ $data->email2 }}</a> </strong>
                @endif
              </div>
            </div>
          </div>


          <div class="box">
            <div class="FlexBox">
              <i class="fas fa-phone-alt icon"></i>
              <div>
                <span>{{ __("public.contact_phone") }}</span>
                @if($data->phone1 != "")
                  <strong> <a href="tel:{{ $data->phone1 }}">{{ $data->phone1 }}</a> </strong>
                @endif
                @if($data->phone2 != "")
                  <strong> <a href="tel:{{ $data->phone2 }}">{{ $data->phone2 }}</a> </strong>
                @endif
              </div>
            </div>
          </div>

          <div class="box">
            <div class="FlexBox">
              <i class="far fa-map-marker-alt icon"></i>
              <div>
                <span>{{ __("public.contact_media") }}</span>
                <div class="media">
                  @if ($data->facebook != "")
                    <a target="_blank" style="color: #1877f2" href="{{ $data->facebook }}"><i class="fab fa-facebook-f"></i></a>
                  @endif
                  @if ($data->google != "")
                    <a target="_blank" style="color: #dd4b39" href="{{ $data->google }}"><i class="fab fa-google-plus-g"></i></a>
                  @endif
                  @if ($data->linkedin != "")
                    <a target="_blank" style="color: #0077b5" href="{{ $data->linkedin }}"><i class="fab fa-linkedin-in"></i></a>
                  @endif
                  @if ($data->twitter != "")
                    <a target="_blank" style="color: #1da1f2" href="{{ $data->twitter }}"><i class="fab fa-twitter"></i></a>
                  @endif
                  @if ($data->instagram != "")
                    <a target="_blank" style="color: #833ab4" href="{{ $data->instagram }}"><i class="fab fa-instagram"></i></a>
                  @endif
                  @if ($data->snap != "")
                    <a target="_blank" style="color: #ffa900" href="{{ $data->snap }}"><i class="fab fa-snapchat"></i></a>                                 
                  @endif
                  @if ($data->whatsapp != "")
                    <a target="_blank" style="color: #075e54" href="{{ $data->whatsapp }}"><i class="fab fa-whatsapp"></i></a>                   
                  @endif
              </div>
              </div>
            </div>
          </div>


        </div>






        <div class="col-md-12 wow animate__animated animate__slideInUp">
          <br><br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3704.219707161814!2d39.07410646733724!3d21.81044043766969!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c1654915d7d2a5%3A0xfb2a8f7baaeff818!2z2LPZh9mFINin2YTYsdmI2KfYryDYp9mE2LnZgtin2LHZitip!5e0!3m2!1sar!2seg!4v1660029452005!5m2!1sar!2seg" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>

      </div>
    </div>
  </div>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML HEADER ---------------------------------->
  <!-------------------------------------------------------------------------------------->











   <script>
    $(document).ready(function () {
      $(".sendMessage").click(function () {
        var username = $("#username").val();
        var email    = $("#email").val();
        var phone    = $("#phone").val();
        var subject  = $("#subject").val();
        var message  = $("#message").val();
        $.ajax({
          url:"send.email",
          method:"POST",
          data:{username:username, email:email, phone:phone, subject:subject, message:message},
          success:function(data) {
            $("#alert").html(data);
           }
        });
      });
  });
  
  </script>




@endsection