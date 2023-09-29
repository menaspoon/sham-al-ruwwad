@if(Auth::user()->acount == "admin")

@extends('master')
@section('content')
<br><br><br>
<div>
  <div class="container">
<style>
  svg { display: none !important;}
</style>

    <h2 class="text-center">منصات التواصـــل</h2>

    <br><br>


{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
@if (Session::has("updated"))
  <div class="alert alert-success texe-center text-center" role="alert">
    {{ __('public.updated') }}
  </div>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
<br>
    
<div>
  <form class="container" method="POST" action="{{ route('update.contact') }}">
    <div class="row justify-content-center" >
      <div class="col-md-5">
        @csrf

        <div class="form-outline">
          <input type="text" name="address_ar" class="form-control form-control-lg" value="{{ $data->address_ar}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> العنوان بالعربية </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="address_en" class="form-control form-control-lg" value="{{ $data->address_en}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> العنوان بالانجليزية </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="phone1" class="form-control form-control-lg" value="{{ $data->phone1}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> رقم الهاتف الاول [اختياري]  </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="phone2" class="form-control form-control-lg" value="{{ $data->phone2}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> رقم الهاتف الثاني [اختياري]  </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="email1" class="form-control form-control-lg" value="{{ $data->email1}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> البريد الالكتروني  الاول [اختياري]  </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="email2" class="form-control form-control-lg" value="{{ $data->email2}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> البريد الالكتروني  الثاني [اختياري]  </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="facebook" class="form-control form-control-lg" value="{{ $data->facebook}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> فيس بوك </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="twitter" class="form-control form-control-lg" value="{{ $data->twitter}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> تويتر </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="google" class="form-control form-control-lg" value="{{ $data->google}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> جوجل بلاس </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="linkedin" class="form-control form-control-lg" value="{{ $data->linkedin}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> لانكدان </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="instagram" class="form-control form-control-lg" value="{{ $data->instagram}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> انستجرام </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <div class="form-outline">
          <input type="text" name="snap" class="form-control form-control-lg" value="{{ $data->snap}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> سناب </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        
        <div class="form-outline">
          <input type="text" name="whatsapp" class="form-control form-control-lg" value="{{ $data->whatsapp}}">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> واتســــاب </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>

        <input value="تحديث البيانات"  type="submit" class="btn btn-primary">


      </div>
    </div>
  </form>
</div>

@endsection

@endif