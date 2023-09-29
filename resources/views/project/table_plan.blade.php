@extends('master')
@section('content')


<br><br>


<div class="table-plan">
  <div class="container">

    <div class="header">
      <h2> {{ __('public.plans') }}  </h2>
    </div>
    <br>
    @if(app()->getLocale() == 'ar')
        <div class="alert alert-warning subscribe-plan-alert" style="display:none" role="alert">
          <div><strong> يرجي تحويل المبلغ علي حساب البنك السعودي الفرنسي</strong><a href="#">SA56550000000996727001</a></div>
          <div><strong> التواصل عبر الهاتف</strong><a href="tel:+966505580553">+966505580553</a></div>
          <div><strong> التواصل عبر البريد </strong><a href="mailto:sales@sell2day.net">sales@sell2day.net</a> </div>
        </div>
    @else
        <div class="alert alert-warning subscribe-plan-alert" style="display:none" role="alert">
          <div><strong> Please transfer the amount to the account of Banque Saudi Fransi </strong> <a href="#">SA56550000000996727001</a></div>
          <div><strong> contact by Phone </strong> <a href="tel:+966505580553">+966505580553</a></div>
          <div><strong> Contact by Mail </strong> <a href="mailto:sales@sell2day.net">sales@sell2day.net</a> </div>
        </div>
    @endif

    <div class="row">

        @foreach($data as $item)
            <div class="col-12 col-12 col-md-6 col-lg-4 col-xl-3 ">
              <div class="box">
                <h4> {{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }}  </h4>
                <div class="price">
                  <h5>{{ $item->price }}</h5>
                  <span>
                        @if($item->currency == "sr")
                            {{ __("offer.cre_sr") }}
                        @else
                            {{ __("offer.cre_us") }}
                        @endif
                  </span>
                </div>
                <strong>{{ $item->count }} {{ __('public.offer') }} </strong>
                <li><i class="far fa-check"></i>  {{ __('public.first_page') }}    </li>
                <li><i class="far fa-check"></i>  {{ __('public.Unspecified_date') }}    </li>
                <button data-plan="{{ $item->id }}" class="subscribe-plan"> {{ __('public.subscribe') }} </button>
              </div>
            </div>
        @endforeach
        
      
      
    </div>
  </div>
</div>



@endsection
