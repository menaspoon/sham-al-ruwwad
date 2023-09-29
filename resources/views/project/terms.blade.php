@extends('master')
@section('content')





<div class="about">
  <div class="container">

    <div class="header">
      @if (request()->route('type') == "terms")
        <h2> {{ __('login.terms') }} </h2>
      @else
        <h2>{{ __('login.policy') }}</h2>
      @endif
    </div>


    <div class="row">
      <div class="col-md-8">
        @foreach ($data as $item)
          <div class="item">
            <h6>{{ app()->getLocale() == 'ar' ? $item->title_ar : $item->title_en  }}</h6>
            <p>{{ app()->getLocale() == 'ar' ? $item->text_ar : $item->text_en  }}</p>
          </div>
        @endforeach

      </div>
    </div>

  </div>
</div>



@endsection
