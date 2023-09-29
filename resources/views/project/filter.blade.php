@extends('master')
@section('content')



<div class="other-upper-page">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-10">

        <form action="{{ route("search.filter") }}" method="POST" class="filter">
          @csrf 
          <!--
          <input type="text" class="search" name="search" placeholder="عن ماذ تبحث">
          -->

          <div class="row">
            <div class="col-md-4">
              <select name="city" id="people">
                <option value="0">{{ __("offer.city") }}</option>
                @foreach ($city as $item)
                  <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                @endforeach
              </select>
            </div>
            <div class="col-md-4">
              <select name="neighborhood" id="people2">
                <option value="0">الحــــي</option>
                @foreach ($neighborhood as $item)
                  <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                @endforeach
              </select>
            </div>
            <div class="col-md-4">
              <select name="type" id="people3">
                <option value="0">{{ __("offer.type") }}</option>
                @foreach ($type_estates as $item)
                  <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                @endforeach
              </select>
            </div>
          </div>


          <!---

          -->

          <br><br>

          <div>

            <div class="space">
              <label for="">السعر الادني</label>
              <input type="number" name="min_price" placeholder="0">
            </div>
  
            <div class="space">
              <label for="">السعر  الاعلي</label>
              <input type="number" name="max_price" placeholder="0">
            </div>

            <div class="space">
              <label for=""> اقل مساحة </label>
              <input type="number" name="min_sqft" placeholder="0">
            </div>
  
            <div class="space">
              <label for="">اعلي مساحة</label>
              <input type="number" name="max_sqft" placeholder="0">
            </div>

          </div>

          <br><br>

          <div class="select">
            <select name="face" id="">
              @foreach ($face_estates as $item)
                <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
              @endforeach
            </select>

            <select name="apartments" id="">
              <option value="0">{{ app()->getLocale() == 'ar' ? "عدد الشقق" : "Count Of Apartments"  }} </option>
              <option value="1">{{ app()->getLocale() == 'ar' ? "شقة واحدة" : "one apartment"  }} </option>
              <option value="2">{{ app()->getLocale() == 'ar' ? "شقتان" : "two apartment"  }} </option>
              <option value="3">{{ app()->getLocale() == 'ar' ? "٣ شقق" : "three apartment"  }} </option>
              <option value="4">{{ app()->getLocale() == 'ar' ? "٤ شقق" : "four apartment"  }} </option>
            </select>

            <select name="property_age" id="">
              <option value="0">{{ app()->getLocale() == 'ar' ? "عمر المبني" : "building age"  }} </option>
              <option value="2">{{ app()->getLocale() == 'ar' ? "  سنتين" : "Less than 2 years"  }} </option>
              <option value="5">{{ app()->getLocale() == 'ar' ? "أقل من 5 سنة" : "Less than 5 years"  }} </option>
              <option value="10">{{ app()->getLocale() == 'ar' ? "أقل من 10 سنة" : "Less than 10 years"  }} </option>
              <option value="15">{{ app()->getLocale() == 'ar' ? "أقل من 15 سنة" : "Less than 15 years"  }} </option>
            </select>

            <select name="street" id="">
              <option value="0">{{ app()->getLocale() == 'ar' ? "عرض الشارع" : "street width"  }} </option>
              <option value="5">{{ app()->getLocale() == 'ar' ? "أكثر من 5 م" : "more than 5 M"  }} </option>
              <option value="10">{{ app()->getLocale() == 'ar' ? "أكثر من 10 م" : "more than 10 M"  }} </option>
              <option value="15">{{ app()->getLocale() == 'ar' ? "أكثر من 15 م" : "more than 15 M"  }} </option>
              <option value="20">{{ app()->getLocale() == 'ar' ? "أكثر من 20 م" : "more than 20 M"  }} </option>
              <option value="30">{{ app()->getLocale() == 'ar' ? "أكثر من 30 م" : "more than 30 M"  }} </option>
              <option value="50">{{ app()->getLocale() == 'ar' ? "أكثر من 50 م" : "more than 50 M"  }} </option>
            </select>

            <select name="shops" id="">
              <option value="0">{{ app()->getLocale() == 'ar' ? "عدد المحلات" : "Count of Shops"  }} </option>
              <option value="2">{{ app()->getLocale() == 'ar' ? "أكثر من 2" : "more than 5"  }} </option>
              <option value="5">{{ app()->getLocale() == 'ar' ? "أكثر من 5" : "more than 5"  }} </option>
              <option value="7">{{ app()->getLocale() == 'ar' ? "أكثر من 7" : "more than 5"  }} </option>
              <option value="10">{{ app()->getLocale() == 'ar' ? "أكثر من 10" : "more than 5"  }} </option>
            </select>
          </div>


          <!--
          <div class="other">
            <input type="number"  name="address" placeholder="{{ __("offer.address") }}">
            <input type="number"  name="district" placeholder="{{ __("offer.district") }}">
            <input type="number"  name="floors" placeholder="{{ __("offer.floors") }}">
            <input type="number"  name="board" placeholder="{{ __("offer.board") }}">
            <input type="number"  name="bath" placeholder="{{ __("offer.bath") }}">
            <input type="number"  name="board" placeholder="{{ __("offer.board") }}">
            <input type="number"  name="kitchen" placeholder="{{ __("offer.kitchen") }}">
            <input type="number"  name="elevator" placeholder="{{ __("offer.elevator") }}">
            <input type="number"  name="servant_room" placeholder="{{ __("offer.servant_room") }}">
            <input type="number"  name="laundry_room" placeholder="{{ __("offer.laundry_room") }}">
            <input type="number"  name="swimming_pool" placeholder="{{ __("offer.swimming_pool") }}">
            <input type="number"  name="parking" placeholder="{{ __("offer.parking") }}">
            <input type="number"  name="face" placeholder="{{ __("offer.face") }}">
            <input type="number"  name="price" placeholder="{{ __("offer.price") }}">

          </div>
        -->

          <button> بحث </button>

        </form>

      </div>
    </div>
    
    
  </div>
</div>


<br><br><br><br>


<div class="offers wow animate__animated animate__backInUp">
  <div class="container">
    <div class="row">



        @if($offers->count() > 0)
            @foreach ($offers as $item)
            <div  class="col-12 col-sm-12 col-md-6 col-lg-4">
            <div class="box" style="background: url({{ asset('/public/offers/'.$item->picture) }});">
                <div class="content">
                @if($item->category)
                <div class="popup"> {{ $item->category_ar  }} </div>
                @endif
                @if($item->status)
                    <div class="pay"> {{ $item->status_ar  }} </div>
                @endif
                <div class="price"> {{ $item->price }} ريال سعودي </div>
                <h3><a href="/single.offer/{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }}</a></h3>
                <div class="FlexBox">
                    <div> <i class="fal fa-ruler-combined"></i> {{ $item->sqft }} </div>
                    <div> <i class="fal fa-bath"></i> {{ $item->bath }} </div>
                    <div> <i class="fal fa-bed"></i> {{ $item->bedroom }} </div>
                </div>
                </div>
            </div>
            </div>
            @endforeach
        @endif





    </div>
  </div>
</div>



@endsection

  






