@extends('master')
@section('content')


<link href="https://sell2day.net/public/asset/sell2day/style.css" rel="stylesheet" type="text/css" />

<script src="https://sell2day.net/public/asset/sell2day/jquery-1.11.0.min.js"></script>
<script src="https://sell2day.net/public/asset/sell2day/owl.carousel.min.js"></script>
<script src="https://sell2day.net/public/asset/sell2day/wow.min.js"></script>
<script src="https://sell2day.net/public/asset/sell2day/jquery.fancybox.js"></script>
<script src="https://sell2day.net/public/asset/sell2day/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="https://sell2day.net/public/asset/sell2day/jquery.nice-select.min.js"></script>
<script src="https://sell2day.net/public/asset/sell2day/slick.min.js"></script>
<script src="https://sell2day.net/public/asset/sell2day/java.js"></script>

<form method="POST" action="{{ route('update.offer') }}" class="create" enctype="multipart/form-data" >
<input type="hidden" name="id" id="formControlLg" value="{{ $offer->id }}" />

  <div class="container">
    <!--
    <h3>اضافة العرض</h3>
    -->
    @csrf
    <div class="row justify-content-center">

      <div class="col-md-10">
    {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
    <br>
    @if (Session::has("created"))
      <div class="alert alert-success texe-center text-center" role="alert">
        {{ __('public.created') }}
      </div>
    @endif
    {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
    <br>
      </div>
      <style>

.gallery a { 
    position: relative;
    width: 122px;
    display: inline-block;
}

.gallery img {
    width: 100px;
    height: 100px;
    margin: 10px;
    border-radius: 10px;
}

.gallery a i {
    position: absolute;
    background: var(--mdb-danger);
    padding: 5px;
    border-radius: 19px;
    font-size: 14px;
    color: #fff;
}
</style>



      <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-5">

        <div class="slide box">
            <div class="add-photos">
                <div class="field">
                    <div class="uploadInner">
                        <div class="front-in">
                            <i class="fal fa-plus"></i>
                            <h6><i class="fal fa-images"></i> {{ __("offer.picture") }} </h6>
                            <input type="file" class="files" id="files" name="pictures[]" multiple  />
                        </div>
        
                    </div>
                </div>
            </div>

            <div class="gallery">
                @if($offer->picture != " ")
                    <a class="remove-picture-offer" data-id="{{ $offer->id }}">
                        <i class="far fa-trash-alt"></i>
                        <img src="{{ asset('/public/offers/' . $offer->picture) }}" />
                    </a>
                @endif
                @foreach($gallery as $item)
                <a class="remove-gallery" data-id="{{ $item->id }}">
                    <i class="far fa-trash-alt"></i>
                    <img src="{{ asset('/public/offers/' . $item->photo) }}" />
                </a>
                @endforeach
            </div>
            </br></br>



        <div class="slide box">





            <div class="form-outline">
              <select name="type" id=""  id="formControlLg" class="form-control form-control-lg select_category selected" >
                @if($offer->city != "")
                    <option value="{{ $singleTypeEstates->id }}">{{ $singleTypeEstates->name_ar }}</option>
                @else
                    <option></option>
                @endif
                @foreach ($type_estates as $item)
                <option  value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                @endforeach
              </select>
              <input type="hidden"  id="formControlLg" class="form-control form-control-lg" />
              <label class="form-label" for="formControlLg"> {{ __("offer.type") }} </label>
            </div>
  
  
                <label class="form-label" for="formControlLg"> الحالة </label>
                <div class="form-outline">
                <select name="status"  id="formControlLg" class="form-control form-control-lg">
                  <option value="{{ $offer->status }}"></option>
                  @foreach ($status as $item)
                  <option  value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                  @endforeach
                </select>
                  <input type="hidden">
                </div>



            <div class="row">

              <div class="col-md-6">
                <select name="city" id="people">
                  @if($offer->city != "")
                       <option value="{{ $singleCity->id }}">{{ $singleCity->name_ar }}</option>
                  @else
                       <option>المدينـــــــــة</option>
                  @endif
                  @foreach ($city as $item)
                    <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                  @endforeach
                </select>
              </div>

              <div class="col-md-6">
                <select name="neighborhood" id="people2">
                  @if($offer->neighborhood != "")
                       <option value="{{ $singleNeighborhood->id }}">{{ $singleNeighborhood->name_ar }}</option>
                  @else
                       <option>الحـــــي</option>
                  @endif
                  @foreach ($neighborhood as $item)
                    <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                  @endforeach
                </select>
              </div>



            </div>

            <br>
            <div class="form-outline">
              <select name="category" id=""  id="formControlLg" class="form-control form-control-lg rental_term-category" >
                @if($offer->category != "")
                       <option value="{{ $singleCategory->id }}">{{ $singleCategory->name_ar }}</option>
                @else
                       <option></option>
                @endif
                @foreach($category as $item)
                  <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }}</option>
                @endforeach
              </select>
              <input type="hidden" name=""  id="formControlLg" class="form-control form-control-lg" />
              <label class="form-label" for="formControlLg">  القسم    </label>
            </div>
  
            <div class="form-outline">
              <input type="number" name="sqft"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->sqft }}" />
              <label class="form-label" for="formControlLg"> {{ __("offer.sqft") }} </label>
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-outline">
                  <input type="number" name="length"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->length }}" />
                  <label class="form-label" for="formControlLg"> {{ __("offer.length") }} </label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-outline">
                  <input type="number" name="width"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->width }}" />
                  <label class="form-label" for="formControlLg"> {{ __("offer.width") }} </label>
                </div>
              </div>

              <div class="col-md-6">
                <div class="form-outline">
                  <input type="number" name="price"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->price }}" />
                  <label class="form-label" for="formControlLg"> {{ __("offer.price") }} </label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-outline">
                  <select name="currency" id=""  id="formControlLg" class="form-control form-control-lg" >
                    @if($offer->currency != "")
                        <option value="{{ $singleCurrency->id }}">{{ $singleCurrency->name_ar }}</option>
                    @else
                        <option></option>
                    @endif
                    @foreach ($currency as $item)
                    <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                    @endforeach
                  </select>
                  <input type="hidden" name="type_ar"  id="formControlLg" class="form-control form-control-lg" />
                  <label class="form-label" for="formControlLg"> {{ __("offer.currency") }} </label>
                </div>
              </div>
            </div>





          <div class="form-outline">
            <input type="text"  name="name_ar" id="formControlLg" class="form-control form-control-lg" value="{{ $offer->name_ar }}" />
            <label class="form-label" for="formControlLg">{{ __("offer.name_ar") }}</label>
          </div>
          {{--
          <div class="form-outline">
            <input type="text"  name="name_en" id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg">{{ __("offer.name_en") }}</label>
          </div>
        --}}
        </div>

        <div class="slide box">
            <div class="form-outline">
              <textarea name="description_ar"  id="" cols="4" rows="4" class="form-control form-control-lg">{{  $offer->text_ar  }}</textarea>
              <label class="form-label" for="formControlLg">{{ __("offer.description_ar") }}</label>
            </div>
            {{--
            <div class="form-outline">
              <textarea name="description_en"  id="" cols="4" rows="4" class="form-control form-control-lg"></textarea>
              <label class="form-label" for="formControlLg">{{ __("offer.description_en") }}</label>
            </div>
            --}}


          <div class="form-outline">
            <input type="text" name="address_ar"  id="formControlLg" class="form-control form-control-lg"  value="{{ $offer->address_ar }}" />
            <label class="form-label" for="formControlLg"> عنـــــوان العقار </label>
          </div>

          <div class="form-outline purpose" style="display: none">
            <select name="purpose" class="form-control form-control-lg filled select-purpose" >
              <option value=""></option>
              <option value="residential">{{ __("offer.residential") }}</option>
              <option value="commercial">{{ __("offer.commercial") }}</option>
              <option value="res_comm">{{ __("offer.res_comm") }}</option>
            </select>
              <input type="hidden"   id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.purpose") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <!--
          <div class="form-outline">
            <input type="text" name="address_en"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.address_en") }} </label>
          </div>
          -->





          


 

</div>

        </div>
      </div>

        


      <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-5">


        
        <div class="slide box">

          @if($offer->district != "")
          <div class="form-outline option show district">
          @else
          <div class="form-outline option district">
          @endif
            <input type="text" name="district"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->district }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.district") }} </label>
          </div>

          @if($offer->face != "")
          <div class="form-outline option show face">
          @else
          <div class="form-outline option face">
          @endif
            <select name="face" id=""  id="formControlLg" class="form-control form-control-lg" >
              <option value="{{ $offer->face }}"> {{ $offer->$face_estates }} </option>
              @foreach ($face_estates as $item)
              <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
              @endforeach
            </select>
            <input type="hidden"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.face") }} </label>
          </div>

          @if($offer->floors != "")
          <div class="form-outline option show floors">
          @else
          <div class="form-outline option floors">
          @endif
            <input type="text" name="floors"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->floors }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.floors") }} </label>
          </div>

          @if($offer->shops != "")
          <div class="form-outline option show shops">
          @else
          <div class="form-outline option shops">
          @endif
            <input type="number" name="shops"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->shops }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.shops") }} </label>
          </div>

          @if($offer->property_age != "")
          <div class="form-outline option show property_age">
          @else
          <div class="form-outline option property_age">
          @endif
            <input type="number" name="property_age"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->property_age }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.property_age") }} </label>
          </div>

          @if($offer->street_width != "")
          <div class="form-outline option show street_width">
          @else
          <div class="form-outline option street_width">
          @endif
            <input type="number" name="street_width"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->street_width }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.street_width") }} </label>
          </div>

          @if($offer->bedroom != "")
          <div class="form-outline option show bedroom">
          @else
          <div class="form-outline option bedroom">
          @endif
            <input type="number" name="bedroom"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->bedroom }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.bedroom") }} </label>
          </div>

          @if($offer->bath != "")
          <div class="form-outline option show bath">
          @else
          <div class="form-outline option bath">
          @endif
            <input type="number" name="bath"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->bath }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.bath") }} </label>
          </div>

          @if($offer->hall != "")
          <div class="form-outline option show hall">
          @else
          <div class="form-outline option hall">
          @endif
            <input type="number" name="hall"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->hall }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.hall") }} </label>
          </div>
          
          @if($offer->board != "")
          <div class="form-outline option show board">
          @else
          <div class="form-outline option board">
          @endif
            <input type="number" name="board"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->board }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.board") }} </label>
          </div>

          @if($offer->kitchen != "")
          <div class="form-outline option show kitchen">
          @else
          <div class="form-outline option kitchen">
          @endif
            <input type="number" name="kitchen"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->kitchen }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.kitchen") }} </label>
          </div>

          @if($offer->apartment != "")
          <div class="form-outline option show apartment">
          @else
          <div class="form-outline option apartment">
          @endif
            <input type="number" name="apartment"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->apartment }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.apartment") }} </label>
          </div>

          @if($offer->number_of_trees != "")
          <div class="form-outline option show number_of_trees">
          @else
          <div class="form-outline option number_of_trees">
          @endif
            <input type="number" name="number_of_trees"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->number_of_trees }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.number_of_trees") }} </label>
          </div>

          @if($offer->number_of_wells != "")
          <div class="form-outline option show number_of_wells">
          @else
          <div class="form-outline option number_of_wells">
          @endif
            <input type="number" name="number_of_wells"  id="formControlLg" class="form-control form-control-lg" value="{{ $offer->number_of_wells }}" />
            <label class="form-label" for="formControlLg"> {{ __("offer.number_of_wells") }} </label>
          </div>

          @if($offer->health_ar != "")
          <div class="form-outline option show health_ar">
          @else
          <div class="form-outline option health_ar">
          @endif
            <select name="health_ar" class="form-control form-control-lg filled">
              <option value="{{ $offer->health_ar }}">{{ $offer->health_ar }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.health_ar") }}  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->education_ar != "")
          <div class="form-outline option show education_ar">
          @else
          <div class="form-outline option education_ar">
          @endif
            <select name="education_ar" class="form-control form-control-lg filled">
              <option value="{{ $offer->education_ar }}">{{ $offer->education_ar }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.education_ar") }}  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>


        <!--
          <div class="form-outline">
            <input type="text" name="health_en" required id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.health_en") }} </label>
          </div>
          <div class="form-outline">
            <input type="text" name="education_ar" required id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.education_ar") }} </label>
          </div>
          <div class="form-outline ">
            <input type="text" name="education_en" required id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.education_en") }} </label>
          </div>
        -->


          
          @if($offer->parking != "")
          <div class="form-outline option show parking">
          @else
          <div class="form-outline option parking">
          @endif
            <select name="parking" class="form-control form-control-lg filled">
              <option value="{{ $offer->parking }}">{{ $offer->parking }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.parking") }}  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->services != "")
          <div class="form-outline option show services">
          @else
          <div class="form-outline option services">
          @endif
            <select name="services" class="form-control form-control-lg filled">
              <option value="{{ $offer->services }}">{{ $offer->services }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.services") }}  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->carpark != "")
          <div class="form-outline option show carpark">
          @else
          <div class="form-outline option carpark">
          @endif
            <select name="carpark" class="form-control form-control-lg filled">
              <option value="{{ $offer->carpark }}">{{ $offer->carpark }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.carpark") }}  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->elevator != "")
          <div class="form-outline option show elevator">
          @else
          <div class="form-outline option elevator">
          @endif
            <select name="elevator" class="form-control form-control-lg filled">
              <option value="{{ $offer->elevator }}">{{ $offer->elevator }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.elevator") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->adaptation != "")
          <div class="form-outline option show adaptation">
          @else
          <div class="form-outline option adaptation">
          @endif
            <select name="adaptation" class="form-control form-control-lg filled">
              <option value="{{ $offer->adaptation }}">{{ $offer->adaptation }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.adaptation") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->badron != "")
          <div class="form-outline option show badron">
          @else
          <div class="form-outline option badron">
          @endif
            <select name="badron" class="form-control form-control-lg filled">
              <option value="{{ $offer->badron }}">{{ $offer->badron }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.badron") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>


          @if($offer->swimming_pool != "")
          <div class="form-outline option show swimming_pool">
          @else
          <div class="form-outline option swimming_pool">
          @endif
            <select name="swimming_pool" class="form-control form-control-lg filled">
              <option value="{{ $offer->swimming_pool }}">{{ $offer->swimming_pool }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.swimming_pool") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->driver_room != "")
          <div class="form-outline option show driver_room">
          @else
          <div class="form-outline option driver_room">
          @endif
            <select name="driver_room" class="form-control form-control-lg filled">
              <option value="{{ $offer->driver_room }}">{{ $offer->driver_room }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.driver_room") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->servant_room != "")
          <div class="form-outline option show servant_room">
          @else
          <div class="form-outline option servant_room">
          @endif
            <select name="servant_room" class="form-control form-control-lg filled">
              <option value="{{ $offer->servant_room }}">{{ $offer->servant_room }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.servant_room") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->laundry_room != "")
          <div class="form-outline option show laundry_room">
          @else
          <div class="form-outline option laundry_room">
          @endif
            <select name="laundry_room" class="form-control form-control-lg filled">
              <option value="{{ $offer->laundry_room }}">{{ $offer->laundry_room }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.laundry_room") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->furnished != "")
          <div class="form-outline option show furnished">
          @else
          <div class="form-outline option furnished">
          @endif
            <select name="furnished" class="form-control form-control-lg filled">
              <option value="{{ $offer->furnished }}">{{ $offer->furnished }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.furnished") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->car_entrance != "")
          <div class="form-outline option show car_entrance">
          @else
          <div class="form-outline option car_entrance">
          @endif
            <select name="car_entrance" class="form-control form-control-lg filled">
              <option value="{{ $offer->car_entrance }}">{{ $offer->car_entrance }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.car_entrance") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>


          @if($offer->property_floor_no != "")
          <div class="form-outline option show property_floor_no">
          @else
          <div class="form-outline option property_floor_no">
          @endif
            <input type="number" name="property_floor_no"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.property_floor_no") }} </label>
          </div>
          
          @if($offer->hall_stair != "")
          <div class="form-outline option show hall_stair">
          @else
          <div class="form-outline option hall_stair">
          @endif
            <select name="hall_stair" class="form-control form-control-lg filled">
              <option value="{{ $offer->hall_stair }}">{{ $offer->hall_stair }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.hall_stair") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->verse != "")
          <div class="form-outline option show verse">
          @else
          <div class="form-outline option verse">
          @endif
            <select name="verse" class="form-control form-control-lg filled">
              <option value="{{ $offer->verse }}">{{ $offer->verse }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.verse") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->cellar != "")
          <div class="form-outline option show cellar">
          @else
          <div class="form-outline option cellar">
          @endif
            <select name="cellar" class="form-control form-control-lg filled">
              <option value="{{ $offer->cellar }}">{{ $offer->cellar }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.cellar") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->duplex != "")
          <div class="form-outline option show duplex">
          @else
          <div class="form-outline option duplex">
          @endif
            <select name="duplex" class="form-control form-control-lg filled">
              <option value="{{ $offer->duplex }}">{{ $offer->duplex }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.duplex") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->area != "")
          <div class="form-outline option show area">
          @else
          <div class="form-outline option area">
          @endif
            <select name="area" class="form-control form-control-lg filled">
              <option value="{{ $offer->area }}">{{ $offer->area }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.area") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->football_stadium != "")
          <div class="form-outline option show football_stadium">
          @else
          <div class="form-outline option football_stadium">
          @endif
            <select name="football_stadium" class="form-control form-control-lg filled">
              <option value="{{ $offer->football_stadium }}">{{ $offer->football_stadium }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.football_stadium") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->volleyball_court != "")
          <div class="form-outline option show volleyball_court">
          @else
          <div class="form-outline option volleyball_court">
          @endif
            <select name="volleyball_court" class="form-control form-control-lg filled">
              <option value="{{ $offer->volleyball_court }}">{{ $offer->volleyball_court }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.volleyball_court") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
            
          @if($offer->amusement_park != "")
          <div class="form-outline option show amusement_park">
          @else
          <div class="form-outline option amusement_park">
          @endif
            <select name="amusement_park" class="form-control form-control-lg filled">
              <option value="{{ $offer->amusement_park }}">{{ $offer->amusement_park }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.amusement_park") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->families_category != "")
          <div class="form-outline option show families_category">
          @else
          <div class="form-outline option families_category">
          @endif
            <select name="families_category" class="form-control form-control-lg filled">
              <option value="{{ $offer->families_category }}">{{ $offer->families_category }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.families_category") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->appendix != "")
          <div class="form-outline option show appendix">
          @else
          <div class="form-outline option appendix">
          @endif
            <select name="appendix" class="form-control form-control-lg filled">
              <option value="{{ $offer->appendix }}">{{ $offer->appendix }}</option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.appendix") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          @if($offer->families != "")
          <div class="form-outline option show families">
          @else
          <div class="form-outline option families">
          @endif
            <select name="families" class="form-control form-control-lg filled">
            <option value="{{ $offer->families }}">{{ $offer->families }}</option>
              <option value="families_families">{{ __("offer.families_families") }}</option>
              <option value="families_families">{{ __("offer.families_singles") }}</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.families_title") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->families != "")
          <div class="form-outline option show rental_term">
          @else
          <div class="form-outline option rental_term">
          @endif
            <select name="rental_term" class="form-control form-control-lg filled">
            <option value="{{ $offer->rental_term }}">{{ $offer->rental_term }}</option>
              <option value="daily">{{ __("offer.daily") }}</option>
              <option value="monthly">{{ __("offer.monthly") }}</option>
              <option value="annual">{{ __("offer.annual") }}</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.rental_term") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          @if($offer->purpose != "")
          <div class="form-outline option show purpose">
          @else
          <div class="form-outline option purpose">
          @endif
            <select name="purpose" class="form-control form-control-lg filled">
            <option value="{{ $offer->purpose }}">{{ $offer->purpose }}</option>
              <option value="residential">{{ __("offer.residential") }}</option>
              <option value="commercial">{{ __("offer.commercial") }}</option>
              <option value="res_comm">{{ __("offer.res_comm") }}</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.purpose") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>


          <label for="">{{ __("offer.advertiser_relationship") }}</label>
          <div style="margin-right: 23px;">

              <!-- Default radio -->
              <div class="form-check">
                @if($offer->advertiser_relationship == "owner")
                  <input class="form-check-input" type="radio" name="advertiser_relationship" id="flexRadioDefault1"  value="owner" checked/>
                @else
                  <input class="form-check-input" type="radio" name="advertiser_relationship" id="flexRadioDefault1"  value="owner"/>
                @endif
                <label class="form-check-label" for="flexRadioDefault1"> {{ __("offer.owner") }} </label>
              </div>

              <!-- Default checked radio -->
              <div class="form-check">
                @if($offer->advertiser_relationship == "agent")
                  <input class="form-check-input" type="radio" name="advertiser_relationship" id="flexRadioDefault1"  value="agent" checked/>
                @else
                  <input class="form-check-input" type="radio" name="advertiser_relationship" id="flexRadioDefault1"  value="agent"/>
                @endif
                <label class="form-check-label" for="flexRadioDefault2"> {{ __("offer.agent") }} </label>
              </div>

              <!-- Default checked radio -->
              <div class="form-check">
                @if($offer->advertiser_relationship == "marketed")
                  <input class="form-check-input" type="radio" name="advertiser_relationship" id="flexRadioDefault1"  value="marketed" checked/>
                @else
                  <input class="form-check-input" type="radio" name="advertiser_relationship" id="flexRadioDefault1"  value="marketed"/>
                @endif
                <label class="form-check-label" for="flexRadioDefault3"> {{ __("offer.marketed") }} </label>
              </div>
              <textarea name="advertiser_phone" cols="1" rows="1" placeholder="رقم المعلن [ اختياري ]" class="form-control form-control-lg">{{ $offer->advertiser_phone }}</textarea>

              <br>
          </div>
          <!--
          <label class="form-label" for="formControlLg">{{ __("offer.floor_plans") }}</label>
          <div class="form-outline">
            <input type="file" name="floor" id="formControlLg" class="form-control form-control-lg" />
          </div>
          -->
          <input type="hidden" class="form-control" placeholder="lat" name="lat" id="lat" value="24.794213816803946">
          <input type="hidden" class="form-control" placeholder="lng" name="lng" id="lng"  value="46.6946406875">
          <div id="map" style="height:300px; width: 100%;" ></div>
        </div>

        <div class="slide box">
          <button type="submit" class="btn btn-primary">{{ __("offer.cre_save") }}</button>
        </div>

      </div>












      


    </div>
  </div>
</form>




<style>
  .form-outline {margin-bottom: 20px}
  .option {display: none; }
  .show {display: block; }
</style>













</div>
</div>
</form>













<script src="https://sell2day.net/public/asset/sell2day/jquery.fancybox.js"></script>
<script src="https://sell2day.net/public/asset/sell2day/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="https://sell2day.net/public/asset/sell2day/jquery.nice-select.min.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7mxUbi1cmV2tlz0prseIUQOCrKI4Y0iQ&places&callback=initAutocomplete&language=ar&region=SA&libraries&callback=initMap"
      type="text/javascript"></script>
      <script>
        let map;
        function initMap() {
            map = new google.maps.Map(document.getElementById("map"), {
                center: { lat: 21.543333, lng: 39.172779 },
                zoom: 6,
                //scrollwheel: true,
            });
            const uluru = { lat: 21.543333, lng: 39.172779 };
            let marker = new google.maps.Marker({
                position: uluru,
                map: map,
                draggable: true
            });
            google.maps.event.addListener(marker,'position_changed',
                function (){
                    let lat = marker.position.lat()
                    let lng = marker.position.lng()
                    $('#lat').val(lat)
                    $('#lng').val(lng)
                })
            google.maps.event.addListener(map,'click',
            function (event){
                pos = event.latLng
                marker.setPosition(pos)
            })
        }




    </script>







<style>
/*
.form-outline .form-control.form-control-lg~.form-label {
    padding-top: -15px !important;
    position: absolute;
    top: -20px;
    background: #ffffff;
    z-index: 99;
    padding: 6px 10px;
    height: 25px;
}
*/
</style>


      


    </div>
  </div>
</form>

















@endsection