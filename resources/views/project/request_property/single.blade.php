@extends('master')
@section('content')

<style>
  
.box {
    margin: 15px 0px;
}

.request_property_offers {
    background: #f6f6f6;
    padding: 27px;
    border-bottom: 1px solid #999;
    border-radius: 16px;
    margin-bottom: 20px;
}


.request_property_offers span {
    float: left;
    margin-top: -25px;
}

.request_property_offers a {
    float: left;
    position: absolute;
    left: 39px;
    margin-top: 7px;
}


</style>

  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML UPPER PAGE ------------------------------>
  <!-------------------------------------------------------------------------------------->
  <div class="upper-page wow animate__animated animate__backInUp" >
    <div class="container">
      <a href="/"> {{ __("public.nav_home") }} </a> |   {{ $data->name }}
    </div>
  </div>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML UPPER PAGE ------------------------------>
  <!-------------------------------------------------------------------------------------->

<!--
  https://www.radiustheme.com/demo/wordpress/themes/homlisti/home-2/
-->

  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML HEADER ---------------------------------->
  <!-------------------------------------------------------------------------------------->
  <div class="request_property wow animate__animated animate__slideInUp" >
    <div class="container">

      <div class="row justify-content-center">
        <div class="col-md-10">

          <br><br>
          {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
            @if (Session::has("created"))
              <div class="alert alert-success texe-center text-center" role="alert">
                  {{ __('request_property.send_offer') }}
              </div>
            @endif
          {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
          {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
            @if (Session::has("deleted"))
              <div class="alert alert-danger texe-center text-center" role="alert">
                  {{ __('request_property.delete_offer') }}
              </div>
            @endif
          {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
        
        <h3>{{ $data->name }}</h3>
        <br>

        <div class="row">

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.phone') }}</strong>
              <span>{{ $data->phone }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.type') }}</strong>
              <span>{{ $data->type }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.city') }}</strong>
              <span>{{ $data->city }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.start') }}</strong>
              <span>{{ $data->start }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.end') }}</strong>
              <span>{{ $data->end }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.room') }}</strong>
              <span>{{ $data->room }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.bathroom') }}</strong>
              <span>{{ $data->bathroom }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.district_1') }}</strong>
              <span>{{ $data->district_1 }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.district_2') }}</strong>
              <span>{{ $data->district_2 }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.district_3') }}</strong>
              <span>{{ $data->district_3 }}</span>
            </div>
          </div>

          <div class="col-md-4">
            <div class="box">
              <strong>{{ __('request_property.district_4') }}</strong>
              <span>{{ $data->district_4 }}</span>
            </div>
          </div>

          <div class="col-md-12">
            <div class="box">
              <strong>{{ __('request_property.description') }}</strong>
              <span>{{ $data->description }}</span>
            </div>
          </div>

        </div>

        <br><br>
        @foreach ($offers as $offer)
          <div class="request_property_offers">
            <h6>{{ $offer->name }}</h6>
            <span>{{ $offer->created }}</span>
            
            @if(Auth::id())
                @if($user->id == $data->advertiser)
                    <a href="/chat/{{ $user->id }}/{{ $data->advertiser}}/{{ $data->id}}"> {{ __('public.message') }} </a>
                @endif
            @endif
            @if(Auth::id() == $offer->author)
                <a style="color:red" href="/delete.request.property.offer/{{ $offer->id}}"> {{ __('public.delete') }}  </a>
            @endif
            
            <strong>{{ $offer->text }}</strong>
          </div>
        @endforeach
        <br><br>
        <div class="col-md-12">
          <form method="POST" action="{{ route('store.offer.request.property') }}">
            @csrf
            <input type="hidden" name="id" value="{{ $data->id }}">
            <input type="hidden" name="advertiser" value="{{ $data->advertiser }}">
  
            <div class="form-outline">
              <textarea  cols="5" rows="5" name="offer" class="form-control form-control-lg"></textarea>
              <label class="form-label" for="formControlLg" style="margin-left: 0px;"> {{ __('request_property.add_offer') }} </label>
            <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
            <br>
  
            <button type="submit" class="btn btn-primary btn-new btn-sm" data-toggle="modal" data-target="#newModal">  {{ __('request_property.save') }} </button>
          </form>
        </div>


        </div>
      </div>
    </div>
  </div>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML HEADER ---------------------------------->
  <!-------------------------------------------------------------------------------------->





  @endsection