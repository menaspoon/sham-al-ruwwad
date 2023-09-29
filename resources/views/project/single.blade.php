@extends('master')
@section('content')


  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML UPPER PAGE ------------------------------>
  <!-------------------------------------------------------------------------------------->
  <div class="upper-page" >
    <div class="container">
      <a href="/"> {{ __('public.nav_home') }} </a> |  {{ app()->getLocale() == 'ar' ? $single->name_ar : $single->name_en  }}
    </div>
  </div>
  <!-------------------------------------------------------------------------------------->
  <!-------------------------------- CUSTEM HTML UPPER PAGE ------------------------------>
  <!-------------------------------------------------------------------------------------->


<br><br>




  <div class="single-page">
    <div class="container">
      <h2> {{ $single->id }} - {{ app()->getLocale() == 'ar' ? $single->name_ar : $single->name_en  }} <i data-id="{{ request()->route('id') }}" class="fal fa-heart love-it"></i> </h2>
      
      <p><i class="fas fa-map-marker-alt"></i> {{ app()->getLocale() == 'ar' ? $single->address_ar : $single->address_en  }}</p>
      
              <div class="media-share">
              share 
                        <a target="__blank" style="background: #1877f2" href="https://www.facebook.com/sharer/sharer.php?u={{ URL::full() }}">
                            <i class="fab fa-facebook-f"></i> |
                            <span> Facebook</span>
                        </a>
                        <a target="__blank" style="background: #1da1f2" href="https://twitter.com/intent/tweet?url={{ URL::full() }}">
                            <i class="fab fa-twitter"></i> |
                            <span> Twitter</span>
                        </a>
                        <a target="__blank" style="background: #075e54" href="whatsapp://send?text={{ URL::full() }}" data-action="share/whatsapp/share">
                            <i class="fab fa-whatsapp"></i> | 
                            <span>whatsapp</span>
                        </a>
                    </div>
      <br>
      <div class="row">

        <div class="col-md-8">
          <div class="gallery">
            
            <div class="owl-carousel owl-theme">
            @foreach($gallerys as $photo)
              <div class="item">
                @if($photo->extintion == "jpg" || $photo->extintion == "png" || $photo->extintion == "jpeg" || $photo->extintion == "jif" || $photo->extintion == "PNG")
                  <img src="{{ asset('/public/offers/' . $photo->photo) }}">
                @endif
                @if($photo->extintion == "mp4" || $photo->extintion == "3jp" || $photo->extintion == "MOV")
                  <video  controls>
                    <source src="{{ asset('/public/offers/' . $photo->photo) }}" type="video/mp4">
                    <source src="{{ asset('/public/offers/' . $photo->photo) }}" type="video/ogg">
                    Your browser does not support the video tag.
                  </video>
                @endif
              </div>
            @endforeach
            </div>
          </div>
        </div>

        <div class="col-md-4">
          {{-- {user}/{responsible}/{ad} --}}
          
          @if (isset($user->id))
              <a href="/chat/{{ $user->id }}/{{ $single->advertiser}}/{{ $single->id}}" class="make-offer">{{ __('offer.make_offer') }}</a>
              <input type="hidden" id="ad" value="{{ $single->id }}">
              <input type="hidden" id="user" value="{{ Auth::id() }}">
              <input type="hidden" id="responsible" value="{{ $single->advertiser }}">
              <input type="hidden" id="message" value="{{  " انا مهتم باعلانك " . $single->name_ar  }}">
              <a href="/chat/{{ $user->id }}/{{ $single->advertiser}}/{{ $single->id}}" class="make-offer" id="sendMessage">انا مهتم بالاعلان </a>
              <div id="message-alert"></div>
          
          @else
              <div class="alert alert-warning text-center" role="alert">
                  {{ __("offer.login_alert") }} <a href="/login" style="font-weight: bold"> {{ __("offer.login") }} </a>
              </div>
          @endif
          <div class="float content">
            <h5>{{ __('offer.more_details') }}</h5>
            <p>{{ app()->getLocale() == 'ar' ? $single->text_ar : $single->text_en  }}</p>
          </div>


          <div class="content advertiser">
            <a href="/advertiser/{{ $advertiser->id }}" class="FlexBox">
              <img src="{{ asset('public/users/' . $advertiser->picture) }}" />
              <div>
                <h6>{{ $advertiser->name }}</h6>
                <span>صاحب الاعلات</span>
              </div>
            </a>
          </div>
          

          <div class="content advertiser">
              <h5> {{ __('public.report_title') }} </h5>
              <div class="form-outline">
                  <textarea id="report_area" cols="4" rows="4" class="form-control form-control-lg"></textarea>
                  <label class="form-label" for="formControlLg">{{ __('public.report_area') }}</label>
              </div>
              <br>
              <button type="button" class="btn btn-warning report-offer" data-id="{{ $single->id }}">{{ __('public.report_ad') }}</button>
              <button type="button" class="btn btn-warning report-advertiser" data-id="{{ $advertiser->id }}"> {{ __('public.report_adv') }} </button>
              <br><br>
              <div class="alert alert-primary text-center" style="display: none" role="alert">
                {{ __('public.report_succ') }}
              </div>
          </div>

        </div>
        <br>


        <div class="col-md-12">
          <div class="content">
            <h3>Overview</h3>
            <div class="row">




              @if ($single->type != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-home"></i>
                  <div>
                    <strong>{{ __('offer.type') }}</strong>
                    <span>{{ app()->getLocale() == 'ar' ? $single->type_ar : $single->type_en  }}</span>
                  </div>
                </div>
              </div>
              @endif



              @if ($single->bedroom != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-bed"></i>
                  <div>
                    <strong>{{ __('offer.bedroom') }}</strong>
                    <span>{{ $single->bedroom }}<span>

                    @if ($single->bedroom_bathroom != "")
                      @if ($single->bedroom_bathroom == "yes")
                        <span>{{ app()->getLocale() == 'ar' ? "يوجد حمام" : "bathroom"  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "لايوجد حمام" : "no bathroom"  }}</span>
                      @endif
                    @endif

                    @if ($single->bedroom_hall != "")
                      @if ($single->bedroom_hall == "yes")
                        <span>{{ app()->getLocale() == 'ar' ? "يوجد صالة" : ""  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "لايوجد صالة" : "no lounge"  }}</span>
                      @endif
                    @endif

                  </div>
                </div>
              </div>
              @endif


              @if ($single->floor_balance != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-store-alt"></i>
                  <div>
                    <strong>اتجاه الشقة</strong>

                    @if ($single->floor_balance != "")
                      @if ($single->floor_balance == "floor")
                        <span>{{ app()->getLocale() == 'ar' ? "دور" : ""  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "دور و ميزان" : ""  }}</span>
                      @endif
                    @endif

                  </div>
                </div>
              </div>
              @endif



              @if ($single->flat_apartment != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-store-alt"></i>
                  <div>
                    <strong>اتجاه الشقة</strong>

                    @if ($single->bedroom_bathroom != "")
                      @if ($single->bedroom_bathroom == "yes")
                        <span>{{ app()->getLocale() == 'ar' ? "يوجد حمام" : "bathroom"  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "لايوجد حمام" : "no bathroom"  }}</span>
                      @endif
                    @endif

                  </div>
                </div>
              </div>
              @endif

              

              @if ($single->board != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-chair"></i>
                  <div>
                    <strong>{{ __('offer.board') }}</strong>
                    <span>{{ $single->board  }}</span>
                  </div>
                </div>
              </div>
              @endif

              @if ($single->store_number != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-store"></i>
                  <div>
                    <strong>رقم المحل</strong>
                    <span>{{ $single->store_number  }}</span>
                  </div>
                </div>
              </div>
              @endif

              @if ($single->kitchen != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-chalkboard"></i>
                  <div>
                    <strong>{{ __('offer.hall') }}</strong>
                    <span>{{ $single->hall  }}</span>
                  </div>
                </div>
              </div>
              @endif

 
              @if ($single->flat_apartment != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-store-alt"></i>
                  <div>
                    <strong> اتجاه الشقة</strong>
                    @if($single->flat_apartment == "front")
                      <span>{{ app()->getLocale() == 'ar' ? "أمامية" : "Front"  }}</span>
                    @else
                      <span>{{ app()->getLocale() == 'ar' ? "خلفية" : "back"  }}</span>
                    @endif
                  </div>
                </div>
              </div>
              @endif

              @if ($single->elevator != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-angle-double-up"></i>
                  <div>
                    <strong>{{ __('offer.elevator') }}</strong>
                    @if($single->elevator == "yes")
                      <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                    @else
                      <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                    @endif
                  </div>
                </div>
              </div>
              @endif

              @if ($single->driver_room != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-expand-wide"></i>
                  <div>
                    <strong>{{ __('offer.driver_room') }}</strong>
                    @if($single->driver_room == "yes")
                      <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                    @else
                      <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                    @endif
                  </div>
                </div>
              </div>
              @endif




              @if ($single->badron != "")
              <div class="col-md-3">
                <div class="FlexBox">
                 <i class="fal fa-expand-wide"></i>
                  <div>
                    <strong>{{ __('offer.badron') }}</strong>
                    @if($single->laundry_room == "yes")
                      <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                    @else
                      <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                    @endif
                  </div>
                </div>
              </div>
              @endif

              @if ($single->badron != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="far fa-sledding"></i>
                  <div>
                    <strong>{{ __('offer.badron') }}</strong>
                    @if($single->swimming_pool == "yes")
                      <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                    @else
                      <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                    @endif
                  </div>
                </div>
              </div>
              @endif

              @if ($single->badron != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="far fa-ban"></i>
                  <div>
                    <strong>{{ __('offer.badron') }}</strong>
                    @if($single->badron == "yes")
                      <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                    @else
                      <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                    @endif
                  </div>
                </div>
              </div>
              @endif


              @if ($single->parking != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-parking-circle"></i>
                  <div>
                    <strong>{{ __('offer.parking') }}</strong>
                    @if($single->type == "yes")
                      <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                    @else
                      <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                    @endif
                  </div>
                </div>
              </div>
              @endif

              @if ($single->adaptation != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="far fa-inbox"></i>
                  <div>
                    <strong>{{ __('offer.adaptation') }}</strong>
                    @if($single->elevator == "yes")
                      <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                    @else
                      <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                    @endif
                  </div>
                </div>
              </div>
              @endif

              @if ($single->sqft != "")
              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-ruler-combined"></i>
                  <div>
                    <strong>{{ __('offer.sqft') }}</strong>
                    <span>{{ $single->sqft }}<span>
                    </div>
                </div>
              </div>
              @endif

              @if ($single->face != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fa-solid fa-arrow-right"></i>
                    <div>
                      <strong>{{ __('offer.face') }}</strong>
                      <span>{{ app()->getLocale() == "ar"  ? $single->face_ar : $single->face_en  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->district != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-yin-yang"></i>
                    <div>
                      <strong>{{ __('offer.district') }}</strong>
                      <span>{{ $single->district  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->floors != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-sort-amount-up-alt"></i>
                    <div>
                      <strong>{{ __('offer.floors') }}</strong>
                      <span>{{ $single->floors  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->carpark != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-car-garage"></i>
                    <div>
                      <strong>{{ __('offer.carpark') }}</strong>
                        @if($single->carpark == "yes")
                          <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                        @endif 
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->shops != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fab fa-shopify"></i>
                    <div>
                      <strong>{{ __('offer.shops') }}</strong>
                      <span>{{ $single->shops  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->property_age != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-house-damage"></i>
                    <div>
                      <strong>{{ __('offer.property_age') }}</strong>
                      <span>{{ $single->property_age  }}<span>
                      </div>
                  </div>
                </div>
              @endif
              
              @if ($single->street_width != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-road"></i>
                    <div>
                      <strong>{{ __('offer.street_width') }}</strong>
                      <span>{{ $single->street_width  }}<span>
                      </div>
                  </div>
                </div>
              @endif     

              @if ($single->length != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-ruler-horizontal"></i>
                    <div>
                      <strong>{{ __('offer.length') }}</strong>
                      <span>{{ $single->length  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->width != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-ruler-horizontal"></i>
                    <div>
                      <strong>{{ __('offer.width') }}</strong>
                      <span>{{ $single->width  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->advertiser_relationship != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-user-tie"></i>
                    <div>
                      <strong>{{ __('offer.advertiser_relationship') }}</strong>
                        @if($single->advertiser_relationship == "owner")
                          <span>{{ app()->getLocale() == 'ar' ? "المالــــك" : "Owner"  }}</span>
                        @elseif($single->advertiser_relationship == "agent")
                          <span>{{ app()->getLocale() == 'ar' ? "وكيـــل" : "Agent"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "مســـــوق" : "Marketed"  }}</span>
                        @endif

                        @if($single->advertiser_phone != "") 
                        - <span> رقم المعان {{ $single->advertiser_phone  }}<span>
                        @endif

                      
                      </div>
                  </div>
                </div>
              @endif


              @if ($single->families != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-house-night"></i>
                    <div>
                      <strong>{{ __('offer.families') }}</strong>
                        @if($single->families == "yes")
                          <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                        @endif 
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->furnished != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-loveseat"></i>
                    <div>
                      <strong>{{ __('offer.furnished') }}</strong>
                        @if($single->furnished == "yes")
                          <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                        @endif 
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->rental_term != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-loveseat"></i>
                    <div>
                      <strong>{{ __('offer.rental_term') }}</strong>
                        @if($single->rental_term == "daily")
                          <span>{{ app()->getLocale() == 'ar' ? "يومي" : "Daily"  }}</span>
                        @elseif ($single->rental_term == "monthly")
                          <span>{{ app()->getLocale() == 'ar' ? "شهري" : "Monthly"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "سنوي" : "Annual"  }}</span>
                        @endif 
                      </div>
                  </div>
                </div>
              @endif


              @if ($single->car_entrance != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-car-garage"></i>
                    <div>
                      <strong>{{ __('offer.car_entrance') }}</strong>
                        @if($single->car_entrance == "yes")
                          <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                        @endif 
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->property_floor_no != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-car-garage"></i>
                    <div>
                      <strong>{{ __('offer.property_floor_no') }}</strong>
                      <span>{{ $single->property_floor_no  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->apartment != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-building"></i>
                    <div>
                      <strong>{{ __('offer.apartment') }}</strong>
                      <span>{{ $single->apartment  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->hall_stair != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-star-half-alt"></i>
                    <div>
                      <strong>{{ __('offer.hall_stair') }}</strong>
                        @if($single->hall_stair == "yes")
                          <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                        @endif 
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->verse != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-universal-access"></i>
                    <div>
                      <strong>{{ __('offer.verse') }}</strong>
                        @if($single->cellar == "yes")
                          <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                        @endif 
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->cellar != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-camera-home"></i>
                    <div>
                      <strong>{{ __('offer.cellar') }}</strong>
                        @if($single->cellar == "yes")
                          <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                        @endif 
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->duplex != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fas fa-wave-sine"></i>
                    <div>
                      <strong>{{ __('offer.duplex') }}</strong>
                        @if($single->duplex == "yes")
                          <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                        @else
                          <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                        @endif 
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->area != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-box-up"></i>
                    <div>
                      <strong>{{ __('offer.area') }}</strong>
                      @if($single->area == "yes")
                        <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                      @endif 
                    </div>
                  </div>
                </div>
              @endif

              @if ($single->appendix != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-union"></i>
                    <div>
                      <strong>{{ __('offer.appendix') }}</strong>
                      @if($single->appendix == "yes")
                        <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                      @endif 
                    </div>
                  </div>
                </div>
              @endif

              @if ($single->football_stadium != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-futbol"></i>
                    <div>
                      <strong>{{ __('offer.football_stadium') }}</strong>
                      @if($single->football_stadium == "yes")
                        <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                      @endif 
                    </div>
                  </div>
                </div>
              @endif

              @if ($single->volleyball_court != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fas fa-volleyball-ball"></i>
                    <div>
                      <strong>{{ __('offer.volleyball_court') }}</strong>
                      @if($single->volleyball_court == "yes")
                        <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                      @endif                    
                    </div>
                  </div>
                </div>
              @endif

              @if ($single->amusement_park != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-gamepad-alt"></i>
                    <div>
                      <strong>{{ __('offer.amusement_park') }}</strong>
                      @if($single->amusement_park == "yes")
                        <span>{{ app()->getLocale() == 'ar' ? "يوجد" : "Found"  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "لا يوجد" : "Not Found"  }}</span>
                      @endif
                      </div>
                  </div>
                </div>
              @endif


              @if ($single->purpose != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="fal fa-unlink"></i>
                    <div>
                      <strong>{{ __('offer.purpose') }}</strong>
                      @if($single->purpose == "residential")
                        <span>{{ app()->getLocale() == 'ar' ? "سكنــــي" : "residential"  }}</span>
                      @elseif($single->purpose == "commercial")
                        <span>{{ app()->getLocale() == 'ar' ? " تجــــاري" : "Commercial"  }}</span>
                      @else
                        <span>{{ app()->getLocale() == 'ar' ? "سكنــــي و تجــــاري" : "Residential and Commercial"  }}</span>
                      @endif
                      </div>
                  </div>
                </div>
              @endif


              @if ($single->number_of_wells != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-swimming-pool"></i>
                    <div>
                      <strong>{{ __('offer.number_of_wells') }}</strong>
                      <span>{{ $single->number_of_wells  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              @if ($single->number_of_trees != "")
                <div class="col-md-3">
                  <div class="FlexBox">
                    <i class="far fa-trees"></i>
                    <div>
                      <strong>{{ __('offer.number_of_trees') }}</strong>
                      <span>{{ $single->number_of_trees  }}<span>
                      </div>
                  </div>
                </div>
              @endif

              






              <div class="col-md-3">
                <div class="FlexBox">
                  <i class="fal fa-bath"></i>
                  <div>
                    <strong>{{ __('offer.bath') }}</strong>
                    <span>{{ $single->bath }}<span>
                  </div>
                </div>
              </div>







              <div class="col-md-12">
                <br><br>
                <div id="map" style="height:300px; width: 100%;" ></div>
            </div>




 





































            </div>



          </div>
        </div>




        @if($single->floor != "")
        <div class="col-md-8">
          <div class="float content">
            <h5>{{ __('offer.floor_plans') }}</h5>
            <img width="100%" src="{{ asset('/public/offers/' . $single->floor) }}" alt="">
          </div>
        </div>
        @endif


      </div>
    </div>
  </div>






  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7mxUbi1cmV2tlz0prseIUQOCrKI4Y0iQ&places&callback=initAutocomplete&language=ar&region=SA&libraries&callback=initMap"
  type="text/javascript"></script>
  
  <script>
  
          let map;
          function initMap() {
              map = new google.maps.Map(document.getElementById("map"), {
                  center: { lat: {{ $single->lat }}, lng: {{ $single->lng }} },
                  zoom: 12,
                  //scrollwheel: true,
              });
              const uluru = { lat: {{ $single->lat }}, lng: {{ $single->lng }} };
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

// ارسال رسالة
$('#sendMessage').on('click', function(event){
  event.preventDefault()
  var ad            = $("#ad").val();
  var user          = $("#user").val();
  var responsible   = $("#responsible").val();
  var message       = $("#message").val();
  $.ajax({
      url:"/ar/send.message",
      method:"get",
      data:{ad:ad, user:user, responsible:responsible, message},
      success:function(data) {
        $("#message").val(" ");
        $("#message-alert").html("تم ارسال رسالتك بنجاح");

      }
  });
});
  </script>

  <style>

}
</style>
  @endsection