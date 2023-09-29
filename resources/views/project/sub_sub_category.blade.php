@extends('master')
@section('content')
    


<div class="header header-cat container">
  <div class="">
    <div class="row justify-content-center">
      <div class="col-6 col-sm-6 col-md-3 col-lg-3">
        <input type="number" name="" id="min" placeholder="{{ __("offer.min") }}">
        <input type="number" name="" id="max" placeholder="{{ __("offer.max") }}">
      </div>

      <div class="col-6 col-sm-6 col-md-4 col-lg-3">
        <div class="form-check form-check-inline" >
          <input class="form-check-input order_status" type="radio" checked  name='order_status' id="inlineRadio1" value="*" />
          <label class="form-check-label" for="inlineRadio1">{{ __("offer.all") }}</label>
        </div> <br>
        @foreach ($offer_status as $item)
          <div class="form-check form-check-inline" >
            <input class="form-check-input order_status" type="radio"   name='order_status' id="inlineRadio1"  value="{{ $item->id }}" />
            <label class="form-check-label" for="inlineRadio1">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }}</label>
          </div>
        @endforeach
      </div>

      <div class="col-6 col-sm-6 col-md-3 col-lg-3">
        <br>
        <div class="form-check form-check-inline" >
          <input class="form-check-input" type="radio" checked  name="order_price" id="inlineRadio1" value="ASC" />
          <label class="form-check-label" for="inlineRadio1">{{ __("offer.all") }}</label>
        </div> <br>

        <div class="form-check form-check-inline" v-if="data.answer_1 != null">
          <input class="form-check-input" type="radio"  name='order_price' id="inlineRadio1" value="DESC" />
          <label class="form-check-label" for="inlineRadio1">{{ __("offer.highest_price") }}</label>
        </div> <br>
        <div class="form-check form-check-inline" v-if="data.answer_1 != null">
          <input class="form-check-input" type="radio"  name='order_price' id="inlineRadio1" value="ASC" />
          <label class="form-check-label" for="inlineRadio1">{{ __("offer.lowest_price") }}</label>
        </div>
      </div>



      <div class="col-6 col-sm-6 col-md-2 col-lg-3">
        <br>
        <div class="form-check form-check-inline" >
          <input class="form-check-input" type="radio" checked  name='order_time' id="inlineRadio1" value="DESC" />
          <label class="form-check-label" for="inlineRadio1">{{ __("offer.all") }}</label>
        </div> <br>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio"  name='order_time' id="inlineRadio1" value="DESC" />
          <label class="form-check-label" for="inlineRadio1">{{ __("offer.most_recent") }}</label>
        </div> <br>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio"  name='order_time' id="inlineRadio1" value="ASC" />
          <label class="form-check-label" for="inlineRadio1">{{ __("offer.oldest") }}</label>
        </div>
      </div>

      <div class="col-md-12">
        <button class="load-more"> {{ __("offer.search") }} </button>
      </div>

    </div>
  </div>
</div>

<br><br>
<div class="container">
    <div class="owl-carousel owl-sub-category owl-theme">
        @foreach($sub_sub as $items)
            <div class="item">
                 <a href="/sub.sub.category/{{ request()->route('cat') }}/{{ request()->route('sub') }}/{{ $items->id }}">
                     {{ app()->getLocale() == 'ar' ? $items->name_ar : $items->name_en }}  
                 </a>
            </div>
        @endforeach
    </div>
</div>

<!--
<div class="custom-control custom-radio">
  <input type="radio" class="custom-control-input" id="defaultUnchecked" name="defaultExampleRadios">
  <label class="custom-control-label" for="defaultUnchecked">Default unchecked</label>
</div>

-->
  <!---------------------------------------------------------------------->
  <!------------------------- الدورات الاخيرة ---------------------------->
  <div class="ads">
    <div class="container">

      <div class="row">
        <div class="col-md-3">
          <div class="box">
            <h5 class="text-center">قسم {{ app()->getLocale() == 'ar' ? $sinCat->name_ar : $sinCat->name_en  }}</h5>
            @foreach ($sub_cat as $item)
            <a href="/sub.category/{{ request()->route('cat') }}/{{ $item->id }}">
              @if ($item->id == $sinSub->id)
                  <strong> {{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </strong>
              @else
                  {{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }}
              @endif
              
            </a>
            @endforeach
          </div>
        </div>
        <div class="col-md-9 row" id="load_more_content">
        @foreach ($data as $item)
        <div class="col-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
          <div class="item" >
            <div class="background" style="background: url({{ asset('public/offers/' . $item->picture) }});">
              @if($item->paid == "paid")
                <div class="sale"> {{ __('offer.sold') }}  </div>
              @endif
              @if($item->promoted == "promoted")
                <div class="promoted">  {{ __('offer.promoted') }}  </div>
              @endif
            </div>
            <div class="content">
              <h4> {{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </h4>
              <div class="FlexBox">
                <div class="hour"> {{ app()->getLocale() == 'ar' ? $item->address_ar : $item->address_en  }} </div>
              </div>
              <div class="FlexBox bordertop">
                <div class="price"> {{ $item->price }} </div>
                <a class="learn-more" href="/details/{{ $item->id }}"> {{ __("offer.read_more") }} </a>
              </div>
            </div>
          </div>
        </div>
        @endforeach
      </div>

      @if($data->count() > 20)
      <button class="load-more">
        {{ __("offer.load_more") }} 
      </button>
      @endif

      </div>
    </div>
  </div>
  <!------------------------- الدورات الاخيرة ---------------------------->
  <!---------------------------------------------------------------------->


  <input type="hidden" id="get_category" value="{{ request()->route('sub') }}">



<style>
.owl-carousel .item {
    border: 1px solid #ffc720;
    text-align: center;
    padding: 5px 10px;
    border-radius: 62px;
}
</style>


  
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

@if ( app()->getLocale() == "ar")
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
            responsive:{0:{items:2},600:{items:3},1000:{items:8}}
        });
    </script>
@else
        <script>
        $('.owl-carousel').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            lazyLoad:true,
            animateOut: 'slideOutDown',
            animateIn: 'flipInX',
            smartSpeed:1000,
            autoplay:true,
            autoplayTimeout:3000,
            autoplayHoverPause:true,
            responsive:{0:{items:2},600:{items:3},1000:{items:8}}
        })
    </script>
@endif
<script>
    var counter = 0;
    $(".load-more").click(function(){
        counter += 1;
        var min    = $("#min").val();
        var max    = $("#max").val();
        var order_status = $("input[name='order_status']:checked").val();
        var order_price  = $("input[name='order_price']:checked").val();
        var order_time   = $("input[name='order_time']:checked").val();
        var category     = $("#get_category").val();

        if(min != "") { 
            min = $("#min").val();
        } else {
            min = 0;
        }

        if(max != "") { 
            max = $("#max").val();
        } else {
            max = 999999999999;
        }

        if(order_status != "") { 
          order_status = $("input[name='order_status']:checked").val();
        } else {
          order_status = "";
        }

        $.ajax({
            url:"/ajax.load.more.sub.category/"+counter+"/"+min+"/"+max+"/"+order_status+"/"+order_price+"/"+order_time+"/"+sub_category,
            method:"get",
            success:function(data) {
              $("#load_more_content").html(data);
            }
        });
    });
</script>

@endsection