@extends('master')
@section('content')

<div class="other-upper-bar container">
  <h2> {{ $advertiser->name }} </h2>
</div>


<div class="advertiserr">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="FlexBox">
                    <img width="70px" src="{{ asset('public/users/' . $advertiser->picture) }}">
                    <div>
                        <h2> {{ $advertiser->name }} </h2>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <h6>{{ __('offer.social_media') }}</h6><br>
                <div class="media">
                    @if ($advertiser->facebook != "")
                      <a target="_blank" style="color: #1877f2" href="{{ $advertiser->facebook }}"><i class="fab fa-facebook-f"></i></a>
                    @endif
                    @if ($advertiser->twitter != "")
                      <a target="_blank" style="color: #1da1f2" href="{{ $advertiser->twitter }}"><i class="fab fa-twitter"></i></a>
                    @endif
                    @if ($advertiser->inista != "")
                      <a target="_blank" style="color: #833ab4" href="{{ $advertiser->inista }}"><i class="fab fa-instagram"></i></a>
                    @endif
                    @if ($advertiser->snap != "")
                      <a target="_blank" style="color: #ffa900" href="{{ $advertiser->snap }}"><i class="fab fa-snapchat"></i></a>                                 
                    @endif
              </div>
            </div>
            <div class="col-md-3">
                <span> {{ __('offer.date_of_join') }} - {{ $advertiser->created_at }}</span>
                <button type="button" class="btn btn-primary btn-new btn-sm" data-toggle="modal" data-target="#newModal"> ارسال اشعار </button>

            </div>
        </div>
    </div>
</div>


</br></br></br>
<!---------------------------------------------------------------------->
<!------------------------- الدورات الاخيرة ---------------------------->
<div class="offers wow animate__animated animate__backInUp">
  <div class="container">
    <div class="row">



      @foreach ($offers as $item)
      <div  class="col-12 col-sm-12 col-md-6 col-lg-4">
        <div class="box" style="background: url({{ asset('/public/offers/'.$item->picture) }});">
          @if($item->category_en != "other")
              <div class="popup"> {{ app()->getLocale() == 'ar' ? $item->category_ar : $item->category_en  }} </div>
          @endif
          <div class="content">
            <div class="price"> {{ $item->price }} {{ app()->getLocale() == 'ar' ? $item->currency_ar : $item->currency_en  }}  </div>
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



    </div>
  </div>
</div>
  <!------------------------- الدورات الاخيرة ---------------------------->
  <!---------------------------------------------------------------------->













  
<!-- Modal -->
<div class="modal fade" id="newModal" tabindex="-1" role="dialog" aria-labelledby="newModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form action="{{ route('store.notifications') }}" method="post" class="modal-content">
      @csrf
      <div class="modal-header">
        <h5 class="modal-title" id="newModalLabel"> تفاصيل الاشعار </h5>
      </div>
      <div class="modal-body">
        <input type="hidden" name="user" value="{{ request()->route('id') }}">
        <div class="form-outline">
          <textarea name="text_ar" id="" cols="4" rows="4" class="form-control form-control-lg"></textarea>
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> تفاصيل الاشعار بالعربية </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        <div class="form-outline">
          <textarea name="text_en" id="" cols="4" rows="4" class="form-control form-control-lg"></textarea>
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> تفاصيل الاشعار بالانجليزية </label>
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