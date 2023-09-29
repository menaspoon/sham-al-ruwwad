@extends('master')
@section('content')
<br><br>
<div class="other-upper-bar container">
  <h2> عـــــــــــــروضــي </h2>
</div>
<br><br>

          {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
            @if (Session::has("deleted"))
              <div class="alert alert-danger texe-center text-center" role="alert">
                  {{ __('public.deleted') }}
              </div>
            @endif
          {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
        

</br></br>
<!---------------------------------------------------------------------->
<!------------------------- الدورات الاخيرة ---------------------------->
<div class="offers wow animate__animated animate__backInUp">
  <div class="container">
    <div class="row">



      @foreach ($offers as $item)
      <div  class="col-12 col-sm-12 col-md-6 col-lg-4">
        <div class="box" style="background: url({{ asset('/public/offers/'.$item->picture) }});">
        <a class="text-danger" href="/delete.offer/{{ $item->id }}">حذف<a> | 
        <a class="text-success" href="/edit.offer/{{ $item->id }}">تعديل<a>
            @if($item->category)
            <div class="popup"> {{ $item->category_ar  }} </div>
            @endif
            @if($item->status)
                <div class="pay"> {{ $item->status_ar  }} </div>
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