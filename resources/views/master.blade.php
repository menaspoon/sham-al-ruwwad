<!DOCTYPE html>
 <html dir="{{ __('public.dir') }}" lang="{{ __('public.lang') }}">
 <head>
   <meta charset="UTF-8">
   <title> سهم الرواد العقارية  </title>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
   <link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@200;300;400;500;700;800;900&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="{{ asset('/public/asset/css/bootstrap.min.css') }}">
   <link rel="stylesheet" href="{{ asset('/public/asset/css/owl.theme.default.min.css') }}">
   <link rel="stylesheet" href="{{ asset('/public/asset/css/icofont.min.css') }}">
   <link rel="stylesheet" href="{{ asset('/public/asset/css/MyClass.css') }}">
   <link rel="stylesheet" href="{{ asset('/public/asset/css/chosen.min.css') }}">
   @if (app()->getLocale() == 'ar')
    <link rel="stylesheet" href="{{ asset('/public/asset/css/mdb.rtl.min.css') }}">
   @else
    <link rel="stylesheet" href="{{ asset('/public/asset/css/mdb.min.css') }}">
   @endif
   <link rel="stylesheet" href="{{ asset('/public/asset/css/style.css') }}">
   @if (app()->getLocale() == 'ar')
    <link rel="stylesheet" href="{{ asset('/public/asset/css/ar.css') }}">
   @endif
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
   <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
   <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link rel="shortcut icon" href="{{ asset('public/logo.png') }}" type="image/x-icon">

   
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"></urlset>
<meta name="google-site-verification" content="xIIDZL9DvUbNqmZLM4ymAzSDdROYFVbeyJpbH6A4cA8" />
<script async src="https://www.googletagmanager.com/gtag/js?id=G-VHZ9BSVYET"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-VHZ9BSVYET');
</script>
 </head>
 <body>


<a href="https://iwtsp.com/966507789666" >
  <img
   style="width: 60px;  margin: 30px;  position: fixed;  bottom: 0px; z-index: 1000;"
   src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/WhatsApp_icon.png/598px-WhatsApp_icon.png" />
<a/>





  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML NAVBAR ---------------------------------->
  <!-------------------------------------------------------------------------------------->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
    <a class="navbar-brand" href="/"> <img src="{{ asset('public/logo.png') }}" alt=""> </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      @if (app()->getLocale() == 'ar')
        <ul class="navbar-nav ml-auto">
      @else
        <ul class="navbar-nav mr-auto">
      @endif

          <li class="nav-item">
            <a class="nav-link" href="/about">{{ __('public.nav_about') }}</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/contact">{{ __('public.nav_contact') }}</a>
          </li>


          <!--
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              {{ __('public.nav_lang') }}
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                  <a class="dropdown-item" rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                      {{ $properties['native'] }}
                  </a>
              @endforeach
            </div>
          </li>
          
          @if(Auth::id())
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              {{ __('public.nav_admin') }}
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="/offers">{{ __('public.nav_offer') }}</a>
              <a class="dropdown-item" href="/edit.contact">{{ __('public.nav_contact') }}</a>
              <a class="dropdown-item" href="/edit.about">{{ __('public.nav_about') }}</a>
              <a class="dropdown-item" href="/newsletter">{{ __('public.news_news') }}</a>
            </div>
          </li>
          @endif
-->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              {{ __('request_property.request_property') }}
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="/request.property">{{ __('request_property.request_property') }}</a>
              <a class="dropdown-item" href="/my.request.property">{{ __('request_property.my_request') }}</a>

            </div>
          </li>

        @if(Auth::id() )
            @if($user->acount == "admin")
            <li class="nav-item">
                <a class="nav-link" href="/home"> لوحة تحكم </a>
            </li>
          @endif
        @endif
        </ul>
        @if (app()->getLocale() == 'ar')
          <ul class="navbar-nav mr-auto">
        @else
          <ul class="navbar-nav ml-auto">
        @endif
            <li class="nav-item icon">
              <a class="nav-link" href="/acount"> <i class="fal fa-user-alt"></i> <span>{{ __("public.acount") }}</span> </a>
            </li>
            <li class="nav-item icon">
              <a class="nav-link" href="/my.ad" > <i class="fal fa-briefcase"></i> <span> عروضي </span> </a>
            </li>
            <li class="nav-item icon">
              <a class="nav-link" href="/search"> <i class="fal fa-search"></i> <span>{{ __("public.search") }}</span>  </a>
            </li>
            <li class="nav-item icon">
              <a class="nav-link" href="/filter"> <i class="fal fa-filter"></i> <span>{{ __("public.filter") }}</span>  </a>
            </li>
            <li class="nav-item icon">
              <a class="nav-link" href="/love.it"> <i class="fal fa-heart"></i> <span>{{ __("public.loveit") }}</span>  </a>
            </li>
          
            <li class="nav-item icon">
              <a class="nav-link" href="/all.message"> 
                @if ($countMessage > 0)
                  <span class="notifications-count">{{ $countMessage }}</span>
                @endif
                <i class="fal fa-comment-alt-lines"></i> <span>{{ __("public.message") }}</span> 
              </a>
            </li>
            <li class="nav-item icon">
              <a class="nav-link" href="/notifications"> 
                @if ($notificationsCount > 0)
                  <span class="notifications-count">{{ $notificationsCount }}</span> 
                @endif
                
                <i class="fal fa-bell"></i> <span>{{ __("public.notific") }}</span>  
              </a>
            </li>
            @if(Auth::id())
            <li class="nav-item icon">
              <a class="nav-link" href="{{URL('logout')}}" > <i class="fal fa-sign-out-alt"></i> <span>{{ __("public.logout") }}</span> </a>
            </li>
            @endif

            <li class="nav-item li-add-offer">
              <a class="nav-link add-offer" href="/pledge"> <i class="fal fa-plus"></i> <span>{{ __('public.add_offer') }}</span> </a>
            </li>
          </ul>
      </div>
    </div>
  </nav>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML NAVBAR ---------------------------------->
  <!-------------------------------------------------------------------------------------->

  
  


  
@yield('content')








 <script>
    $('.remove-gallery').on('click', function(event){
        event.preventDefault()
        var id     = $(this).data("id");
         var request = new XMLHttpRequest();
        request.open("GET", "/delete.gallery/" + id);
        request.send();
        $(this).hide();

    });

    $('.Newsletter button').on('click', function(event){
        event.preventDefault()
        var email     = $(".Newsletter input").val();
        var request = new XMLHttpRequest();
        request.open("GET", "/store.newsletter/" + email);
        request.send();
        alert('تم الاشتراك في القائمة البريدية بنجاح سيتم الارسال عندما تتوفر عروض جديدة')

    });
</script>

@if(url()->current() == "https://sham-al-ruwwad.com/ar/create")
@elseif(url()->current() == "https://sham-al-ruwwad.com/en/create")
@elseif(url()->current() == "https://sell2day.net/ar/create")
@elseif(url()->current() == "https://sell2day.net/en/create")
@elseif(request()->route()->uri == "ar/edit.offer/{id}")
@elseif(request()->route()->uri == "en/edit.offer/{id}")
@else
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


@endif
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="{{ asset('public/asset/js/mdb.min.js') }}"></script>
<script src="{{ asset('public/asset/js/main.js') }}"></script>
<script src="{{ asset('public/asset/js/offers.js') }}"></script>
<script src="{{ asset('public/asset/js/chosen.jquery.min.js') }}"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"  />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
<link rel="stylesheet" href="https://sell2day.net/public/asset/css/owl.theme.default.min.css">
<link rel="stylesheet" href="https://sell2day.net/public/asset/css/owl.carousel.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<script> new WOW().init(); </script>
     <script>
      $('.owl-carousel').owlCarousel({
          loop:true,
          margin:10,
          nav:true,
          lazyLoad:true,
          rtl:true,
          animateOut: 'slideOutDown',
          animateIn: 'flipInX',
          smartSpeed:1000,
          autoplay:true,
          autoplayTimeout:3000,
          autoplayHoverPause:true,
          responsive:{0:{items:1},600:{items:1},1000:{items:1}}
      });
  </script>







</body>
</html>