@extends('master')
@section('content')
<br><br>


<div class="notifications">
  <div class="container">
    <div class="row">

      <div class="col-md-12">
        <div class="users">
          <div class="box">
            @foreach ($loops as $item)
              <a class="FlexBox">
                <div>
                  <h4>{{ __('public.notifi_title') }}</h4>
                  <strong>{{ $item->created }}</strong>
                  <h6>{{ app()->getLocale() == 'ar' ? $item->text_ar : $item->text_en  }} </h6>
                </div>
              </a>
            @endforeach
          </div>
        </div>
      </div>


    </div>
  </div>
</div>

@endsection
