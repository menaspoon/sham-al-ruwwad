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

<form method="POST" action="{{ route('store.offer') }}" class="create" enctype="multipart/form-data" >
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


            <div class="form-outline">
              <select name="type" id=""  id="formControlLg" class="form-control form-control-lg select_category " >
                <option value=""> </option>
                @foreach ($type_estates as $item)
                <option  value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                @endforeach
              </select>
              <input type="hidden"  id="formControlLg" class="form-control form-control-lg" />
              <label class="form-label" for="formControlLg"> {{ __("offer.type") }} </label>
            </div>
  



            <div class="row">

              <div class="col-md-6">
                  <select name="city" id="people" >
                    <option><option>
                    @foreach($city as $item)
                      <option value="{{ $item->id }}">{{ $item->name_ar }}</option>
                    @endforeach
                  </select>
              </div>

              <div class="col-md-6">
                <select name="neighborhood" id="people2">
                  <option value="type">الحــــــــي</option>
                  @foreach ($neighborhood as $item)
                    <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
                  @endforeach
                </select>
              </div>

            </div>


            <div class="form-outline">
              <select name="category" id=""  id="formControlLg" class="form-control form-control-lg rental_term-category" >
                <option value=""> </option>
                @foreach($category as $item)
                  <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }}</option>
                @endforeach
              </select>
              <input type="hidden" name=""  id="formControlLg" class="form-control form-control-lg" />
              <label class="form-label" for="formControlLg">  القسم    </label>
            </div>
  
            <div class="form-outline">
              <input type="number" name="sqft"  id="formControlLg" class="form-control form-control-lg" />
              <label class="form-label" for="formControlLg"> {{ __("offer.sqft") }} </label>
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-outline">
                  <input type="number" name="length"  id="formControlLg" class="form-control form-control-lg" />
                  <label class="form-label" for="formControlLg"> {{ __("offer.length") }} </label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-outline">
                  <input type="number" name="width"  id="formControlLg" class="form-control form-control-lg" />
                  <label class="form-label" for="formControlLg"> {{ __("offer.width") }} </label>
                </div>
              </div>

              <div class="col-md-6">
                <div class="form-outline">
                  <input type="number" name="price"  id="formControlLg" class="form-control form-control-lg" />
                  <label class="form-label" for="formControlLg"> {{ __("offer.price") }} </label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-outline">
                  <select name="currency" id=""  id="formControlLg" class="form-control form-control-lg" >
                    <option value=""> </option>
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
            <input type="text"  name="name_ar" id="formControlLg" class="form-control form-control-lg" />
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
              <textarea name="description_ar"  id="" cols="4" rows="4" class="form-control form-control-lg"></textarea>
              <label class="form-label" for="formControlLg">{{ __("offer.description_ar") }}</label>
            </div>
            {{--
            <div class="form-outline">
              <textarea name="description_en"  id="" cols="4" rows="4" class="form-control form-control-lg"></textarea>
              <label class="form-label" for="formControlLg">{{ __("offer.description_en") }}</label>
            </div>
            --}}





 




          <div class="form-outline">
            <input type="text" name="address_ar"  id="formControlLg" class="form-control form-control-lg" />
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

        


      <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-5">


        
        <div class="slide box">

          <div class="form-outline option district">
            <input type="text" name="district"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.district") }} </label>
          </div>

          <div class="form-outline option face">
            <select name="face" id=""  id="formControlLg" class="form-control form-control-lg" >
              <option value=""> </option>
              @foreach ($face_estates as $item)
              <option value="{{ $item->id }}">{{ app()->getLocale() == 'ar' ? $item->name_ar : $item->name_en  }} </option>
              @endforeach
            </select>
            <input type="hidden"   id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.face") }} </label>
          </div>

          <div class="form-outline option flat_apartment">
            <select name="flat_apartment" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="front">أمامية</option>
              <option value="back">خلفية</option>
            </select>
            <input type="hidden"   id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  اتجاه الشقة  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>



          <div class="form-outline option floors">
            <input type="text" name="floors"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.floors") }} </label>
          </div>
          
          <div class="form-outline option property_floor_no">
            <input type="text" name="property_floor_no"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.property_floor_no") }} </label>
          </div>

          <div class="form-outline option store_number">
            <input type="text" name="store_number"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> رقم المحل </label>
          </div>
          <div class="form-outline option shops">
            <input type="number" name="shops"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.shops") }} </label>
          </div>
          <div class="form-outline option property_age">
            <input type="number" name="property_age"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.property_age") }} </label>
          </div>
          <div class="form-outline option street_width">
            <input type="number" name="street_width"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.street_width") }} </label>
          </div>

                <div class="form-outline option bedroom">
                  <input type="number" name="bedroom"  id="formControlLg" class="form-control form-control-lg" />
                  <label class="form-label" for="formControlLg"> {{ __("offer.bedroom") }} </label>
                </div>


          
          <div class="form-outline option bath">
            <input type="number" name="bath"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.bath") }} </label>
          </div>

          <div class="form-outline option hall">
            <input type="number" name="hall"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.hall") }} </label>
          </div>
          
          <div class="form-outline option board">
            <input type="number" name="board"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.board") }} </label>
          </div>

          <div class="form-outline option kitchen">
            <input type="number" name="kitchen"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.kitchen") }} </label>
          </div>

          <div class="form-outline option apartment">
            <input type="number" name="apartment"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.apartment") }} </label>
          </div>

          <div class="form-outline option number_of_trees">
            <input type="number" name="number_of_trees"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.number_of_trees") }} </label>
          </div>

          <div class="form-outline option number_of_wells">
            <input type="number" name="number_of_wells"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.number_of_wells") }} </label>
          </div>



          <div class="form-outline option health_ar">
            <select name="health_ar" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.health_ar") }}  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option education_ar">
            <select name="education_ar" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.education_ar") }}  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>


        {{--
          <div class="form-outline">
            <input type="text" name="health_en"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.health_en") }} </label>
          </div>
          <div class="form-outline">
            <input type="text" name="education_ar"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.education_ar") }} </label>
          </div>
          <div class="form-outline ">
            <input type="text" name="education_en"  id="formControlLg" class="form-control form-control-lg" />
            <label class="form-label" for="formControlLg"> {{ __("offer.education_en") }} </label>
          </div>
        --}}


          

          <div class="form-outline option floor_balance">
            <select name="floor_balance" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="floor">دور</option>
              <option value="floor_balance">دور و ميزان</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  دور </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option parking">
            <select name="parking" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.parking") }}  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option carpark">
            <select name="carpark" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.carpark") }}  </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option elevator">
            <select name="elevator" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.elevator") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option adaptation">
            <select name="adaptation" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.adaptation") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option badron">
            <select name="badron" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.badron") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option swimming_pool">
            <select name="swimming_pool" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.swimming_pool") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option driver_room">
            <select name="driver_room" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.driver_room") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option servant_room ">
            <select name="servant_room" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.servant_room") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline option laundry_room">
            <select name="laundry_room" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.laundry_room") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          <div class="form-outline option furnished">
            <select name="furnished" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.furnished") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          <div class="form-outline option car_entrance">
            <select name="car_entrance" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.car_entrance") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>


          
          <div class="form-outline option hall_stair">
            <select name="hall_stair" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.hall_stair") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          <div class="form-outline option verse">
            <select name="verse" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.verse") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          <div class="form-outline option cellar">
            <select name="cellar" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.cellar") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          <div class="form-outline option duplex">
            <select name="duplex" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.duplex") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          <div class="form-outline option area">
            <select name="area" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.area") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          

          <div class="form-outline option football_stadium">
            <select name="football_stadium" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.football_stadium") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          <div class="form-outline option volleyball_court">
            <select name="volleyball_court" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.volleyball_court") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
                    
          <div class="form-outline option amusement_park">
            <select name="amusement_park" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.amusement_park") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          <div class="form-outline option families_category">
            <select name="families_category" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.families_category") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          
          <div class="form-outline option appendix">
            <select name="appendix" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="yes">Yes</option>
              <option value="no">No</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.appendix") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>
          

          <div class="form-outline option families">
            <select name="families" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="families_families">{{ __("offer.families_families") }}</option>
              <option value="families_families">{{ __("offer.families_singles") }}</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.families_title") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>

          <div class="form-outline rental_term" style="display: none">
            <select name="rental_term" class="form-control form-control-lg filled">
              <option value=""></option>
              <option value="daily">{{ __("offer.daily") }}</option>
              <option value="monthly">{{ __("offer.monthly") }}</option>
              <option value="annual">{{ __("offer.annual") }}</option>
            </select>
            <label class="form-label select" for="formControlLg" style="margin-left: 0px;">  {{ __("offer.rental_term") }} </label>
          <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 56.8px;"></div><div class="form-notch-trailing"></div></div></div>




          <label for="">{{ __("offer.advertiser_relationship") }}</label>
          <div style="margin-right: 23px;">
              <!-- Default radio -->
              <div class="form-check">
                <input class="form-check-input" type="radio" name="advertiser_relationship" id="flexRadioDefault1"  value="owner" checked/>
                <label class="form-check-label" for="flexRadioDefault1"> {{ __("offer.owner") }} </label>
              </div>

              <!-- Default checked radio -->
              <div class="form-check">
                <input class="form-check-input" type="radio" name="advertiser_relationship" id="flexRadioDefault2" value="agent"/>
                <label class="form-check-label" for="flexRadioDefault2"> {{ __("offer.agent") }} </label>
              </div>

              <!-- Default checked radio -->
              <div class="form-check">
                <input class="form-check-input" type="radio" name="advertiser_relationship" id="flexRadioDefault3" value="marketed"/>
                <label class="form-check-label" for="flexRadioDefault3"> {{ __("offer.marketed") }} </label>
                <br>
                <textarea name="advertiser_phone" cols="2" rows="2" placeholder="رقم المعلن [ اختياري ]" class="form-control form-control-lg"></textarea>



              </div>
              <br>
          </div>

          <label class="form-label" for="formControlLg">{{ __("offer.floor_plans") }}</label>

          <div class="form-outline">
            <input type="file" name="floor" id="formControlLg" class="form-control form-control-lg" />
          </div>

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

<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCx_6lNFHCIhEJcPV9ELn7vxMnDp6wRBrI&callback=initAutocomplete&libraries=places&v=weekly" ></script> 

<script>









var searchInput = 'search_input';
 
$(document).ready(function () {
 var autocomplete;
 autocomplete = new google.maps.places.Autocomplete((document.getElementById(searchInput)), {
  types: ['geocode'],
  /*componentRestrictions: {
   country: "USA"
  }*/
 });
  
 google.maps.event.addListener(autocomplete, 'place_changed', function () {
  var near_place = autocomplete.getPlace();
 });
});
</script>







      


    </div>
  </div>
</form>

















@endsection