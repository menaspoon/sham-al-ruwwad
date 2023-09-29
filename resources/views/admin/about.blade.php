@if(Auth::user()->acount == "admin") 

@extends('master')
@section('content')

    <div class="container">
      <br><br><br><br>
      <div class="controler dashbord">
        <h4> Edit About Page </h4> <br><br>
        @if (Session::has("update"))
          <div class="alert alert-success" role="alert">
            {{ Session::get("update") }}
          </div>
        @endif
      <form action="{{ route('update.about') }}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="row">
          {{-- 
          <div class="col-md-6">
            <label for=""> Title Arabic </label>
            <input type="text" name="title_ar" class="form-control" value="{{ $about->title_ar }}"> 
          </div>
          <div class="col-md-6">
            <label for=""> Title English </label>
            <input type="text" name="title_en" class="form-control" value="{{ $about->title_en }}"> 
          </div>
          --}}
          <div class="col-md-6">
            <label for=""> About Arabic </label>
            <textarea name="about_ar" rows="5" cols="50" class="form-control">{{ $about->about_ar }}</textarea> <br><br>
          </div>
          <div class="col-md-6">
          <label for=""> About English </label>
            <textarea name="about_en" rows="5" cols="50" class="form-control">{{ $about->about_en }}</textarea> <br><br>
          </div>
          <div class="col-md-6">
          <label for=""> Our Vision Arabic </label>
            <textarea name="vision_ar" rows="5" cols="50" class="form-control">{{ $about->vision_ar }}</textarea> <br><br>
          </div>
          <div class="col-md-6">
            <label for=""> Our Vision English </label>
            <textarea name="vision_en" rows="5" cols="50" class="form-control">{{ $about->vision_en }}</textarea> <br><br>
          </div>
          <div class="col-md-6">
            <label for=""> Our Mission Arabic </label>
              <textarea name="mission_ar" rows="5" cols="50" class="form-control">{{ $about->mission_ar }}</textarea> <br><br>
            </div>
            <div class="col-md-6">
              <label for=""> Our Mission English </label>
              <textarea name="mission_en" rows="5" cols="50" class="form-control">{{ $about->mission_en }}</textarea> <br><br>
            </div>

            <div class="col-md-6">
              <label for=""> Manage Word Arabic </label>
                <textarea name="manage_ar" rows="5" cols="50" class="form-control">{{ $about->manage_ar }}</textarea> <br><br>
              </div>
              <div class="col-md-6">
                <label for=""> Manage Word English </label>
                <textarea name="manage_en" rows="5" cols="50" class="form-control">{{ $about->manage_en }}</textarea> <br><br>
              </div>
          <button class="btn btn-primary" type="submit"> Save  </button>


      </form>

        </div>
      </div>
    </div>

    @endsection

@endif
