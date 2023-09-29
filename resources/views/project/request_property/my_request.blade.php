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
  <div class="request_property wow animate__animated animate__slideInUp" >
    <div class="container">
      <button type="button" class="btn btn-primary btn-new btn-sm" data-toggle="modal" data-target="#newModal">  {{ __('request_property.request_property') }} </button>

      <div class="row justify-content-center">
        <div class="col-md-8">

          <br><br><br>
          {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
            @if (Session::has("created"))
              <div class="alert alert-success texe-center text-center" role="alert">
                  {{ Session::get("created") }}
              </div>
            @endif
          {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
                <br>

          @foreach ($data as $item)
          <div  class="FlexBox">
              <span>.</span>
              <h5> <a href="single.request.property/{{ $item->id }}">{{ $item->name }}</a> </h5>
              <div>
                <a href="delete.request.property/{{ $item->id }}"><i class="fal fa-trash-alt"></i></a>
                <a href="edit.request.property/{{ $item->id }}"><i class="fal fa-pencil-alt"></i></a>
              </div>
            </div>
          @endforeach



          <br><br><br>

        </div>
      </div>
    </div>
  </div>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML HEADER ---------------------------------->
  <!-------------------------------------------------------------------------------------->



  
<!-- Modal -->
<div class="modal fade " id="newModal" tabindex="-1" role="dialog" aria-labelledby="newModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form action="{{ route('store.request.property') }}" method="post" class="modal-content">
      @csrf
      <div class="modal-header">
        <h5 class="modal-title" id="newModalLabel"> {{ __('request_property.request_property') }} </h5>
      </div>
      <div class="modal-body">
        <input type="hidden" name="user" value="{{ request()->route('id') }}">

        <div class="form-outline">
          <input type="text" name="name" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.name') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="phone" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.phone') }}</label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="type" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.type') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="city" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;">{{ __('request_property.city') }}</label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="start" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;">  {{ __('request_property.start') }}  </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="end" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;">  {{ __('request_property.end') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="room" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.room') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="bathroom" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.bathroom') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="district_1" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.district_1') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="district_2" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.district_2') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
                
        <div class="form-outline">
          <input type="text" name="district_3" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.district_3') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
                
        <div class="form-outline">
          <input type="text" name="district_4" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.district_4') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <textarea  cols="5" rows="5" name="description" class="form-control form-control-lg"></textarea>
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.description') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
        <button type="submit" class="btn btn-primary save-data store_supplier"> حفــــظ </button>
      </div> <!-- footer -->
</form>
  </div>
</div>



  @endsection