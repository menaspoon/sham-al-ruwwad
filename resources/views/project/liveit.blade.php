@extends('master')
@section('content')
    



<!--
<div class="header">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-8">
        <h2>اخبرنا عن ماذا تبحث</h2>
        <form action="">
          <input type="text" value="" placeholder="اخبرنا عن ماذا تبحث">
          <button> بحث </button>
        </form>
      </div>
    </div>
  </div>
</div>

-->

<br><br>
<div class="other-upper-bar container">
    <h2> عروض احببتهــــا</h2>
</div>
<br><br>
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






@endsection