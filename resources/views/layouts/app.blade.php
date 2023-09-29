<!DOCTYPE html>
<html lang="ar" dir="rtl">
  <head>
    <meta charset="utf-8">
    <title> ERP </title>
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <script src="{{ asset('js/app.js') }}" defer></script>    
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Mulish:wght@200&display=swap">
    <link rel="stylesheet" href="{{ asset('public/asset/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/asset/css/mdb.rtl.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/asset/css/dashbord.css') }}">
    <link rel="stylesheet" href="{{ asset('public/asset/css/erp.css') }}">
    <link rel="stylesheet" href="{{ asset('public/asset/css/style.css') }}">


  </head>
  <body>

<!-- https://www.tarjama.com/ar -->
    <!----------------------------------------------------------------------------------------------------------->
    <!--------------------------------------- CUSTEM NAVBAR HTML ------------------------------------------------>
    <!----------------------------------------------------------------------------------------------------------->
<!--
  Ip74B^1#
-->




<span class="lnr lnr-menu"></span>
    <div class="menu-nav">
        <span class="lnr lnr-cross"></span>
        
        <a href="/"> الرئيسية </a>
        <a href="/home"> الاحصائيات </a>
        <a href="/offers"> العـــــروض </a>
        <a href="/users"> المستخدمين </a>
        <a href="/edit.about"> من نحن </a>
        <a href="/report.offers"> الابلاغات عن العروض</a>
        <a href="/report.users"> الابلاغات عن المعلنين</a>
        <a href="/city">  المدن </a>
        
        <!--
        <a href="/category"> الاقســــام </a>
        <a href="/all.blog"> المدونة </a>
        <a href="/all.terms/terms"> شروط الخدمة </a>
        <a href="/all.terms/policy"> سياسة الخصوصية </a>
        <a href="/all.help"> مركز المساعدة  </a>
        <a href="/all.plans"> الباقات  </a>
        <a href="/all.subscribe"> الاشتركات  </a>
        <a href="/all.how.work"> كيف نعمل  </a>
        -->

        <a href="/edit.contact"> منصات التواصل  </a>

    </div>

@if(Auth::user()->acount == "admin") 
@endif

    <!----------------------------------------------------------------------------------------------------------->
    <!--------------------------------------- CUSTEM NAVBAR HTML ------------------------------------------------>
    <!----------------------------------------------------------------------------------------------------------->

    @yield('content')
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="{{ asset('public/asset/js/jquery.3.3.1.min.js') }}"></script>

    <script src="{{ asset('public/asset/js/mdb.min.js') }}"></script>
    <script src="{{ asset('public/asset/js/script.js') }}"></script>


  </body>
</html>