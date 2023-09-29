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


  
<!-- Modal -->
<div class="container" >
  <div class="row">
    <form  action="{{ route('update.request.property') }}" method="post" class="modal-content col-md-3">
      @csrf
      <div class="modal-header">
        <h5 class="modal-title" id="newModalLabel"> {{ __('request_property.request_property') }} </h5>
      </div>
      <div class="">
        <input type="hidden" name="id" value="{{ $data->id }}">

        <div class="form-outline">
            <input type="text" name="name" class="form-control form-control-lg" value="{{ $data->name }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.name') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="phone" class="form-control form-control-lg" value="{{ $data->phone }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.phone') }}</label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="type" class="form-control form-control-lg" value="{{ $data->type }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.type') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="city" class="form-control form-control-lg" value="{{ $data->city }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;">{{ __('request_property.city') }}</label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="start" class="form-control form-control-lg" value="{{ $data->start }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;">  {{ __('request_property.start') }}  </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="end" class="form-control form-control-lg" value="{{ $data->end }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;">  {{ __('request_property.end') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="room" class="form-control form-control-lg" value="{{ $data->room }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.room') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="bathroom" class="form-control form-control-lg" value="{{ $data->bathroom }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.bathroom') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="district_1" class="form-control form-control-lg" value="{{ $data->district_1 }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.district_1') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="district_2" class="form-control form-control-lg" value="{{ $data->district_2 }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.district_2') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
                
        <div class="form-outline">
          <input type="text" name="district_3" class="form-control form-control-lg"  value="{{ $data->district_3 }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.district_3') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
                
        <div class="form-outline">
          <input type="text" name="district_4" class="form-control form-control-lg"  value="{{ $data->district_4 }}">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.district_4') }} </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <textarea  cols="5" rows="5" name="description" class="form-control form-control-lg">{{ $data->description }}</textarea>
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.description') }}  </label>
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