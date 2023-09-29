@extends('master')
@section('content')

<br><br><br>


<div class="register">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
  <div class="container">
    <form class="box" form method="POST" action="{{ route('update.acount') }}" enctype="multipart/form-data">
                    @csrf
                    <div class="body">

                        {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
                            @if (Session::has("updated"))
                                <div class="alert alert-success texe-center text-center" role="alert">
                                    {{ Session::get("updated") }}
                                </div>
                            @endif
                        {{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
                        <br>

                        <label for="uploadFile" class="label-picture">
                            <img src="{{ asset('public/users/' . $single->picture) }}" alt="">
                            <i class="fas fa-pencil-alt"></i>
                            <input type="file" name="file" id="uploadFile" style="display: none">
                        </label>


                        <div class="form-outline">
                            <input type="text" class="form-control form-control-lg" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $single->name }}"  >
                            <label class="form-label" for="formControlLg">{{ __('auth.username') }}</label>
                        </div>
                        <br>
                        @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        <div class="form-outline">
                            <input type="text" class="form-control form-control-lg" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $single->email }}">
                            <label class="form-label" for="formControlLg">{{ __('auth.email') }}</label>
                        </div>
                        @error('email')
                        <br>
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        <br>
                        <div class="form-outline">
                            <input id="password" type="text" class="form-control form-control-lg" class="form-control @error('password') is-invalid @enderror" name="password" value="{{ $single->text_password }}">
                            <label class="form-label" for="formControlLg"> {{ __('auth.password') }} </label>
                        </div>
                        <br>
                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror

                        <div class="form-outline">
                            <input type="number" class="form-control form-control-lg" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ $single->phone }}">
                            <label class="form-label" for="formControlLg"> {{ __('auth.phone') }}  </label>
                        </div>
                        <br>
                        @error('phone')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror

                        <div class="form-outline">
                            <input type="text" class="form-control form-control-lg" class="form-control @error('facebook') is-invalid @enderror" name="facebook" value="{{ $single->facebook }}">
                            <label class="form-label" for="formControlLg">  {{ __('auth.facebook') }}  </label>
                        </div>
                        <br>
                        @error('facebook')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        
                        
                        <div class="form-outline">
                            <input type="text" class="form-control form-control-lg" class="form-control @error('twitter') is-invalid @enderror" name="twitter" value="{{ $single->twitter }}">
                            <label class="form-label" for="formControlLg"> {{ __('auth.twitter') }}  </label>
                        </div>
                        <br>
                        @error('twitter')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        
                        <div class="form-outline">
                            <input type="text" class="form-control form-control-lg" class="form-control @error('inista') is-invalid @enderror" name="inista" value="{{ $single->inista }}">
                            <label class="form-label" for="formControlLg"> {{ __('auth.instagram') }}  </label>
                        </div>
                        <br>
                        @error('inista')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror  
                        
                        
                        <div class="form-outline">
                            <input type="text" class="form-control form-control-lg" class="form-control @error('snap') is-invalid @enderror" name="snap" value="{{ $single->snap }}">
                            <label class="form-label" for="formControlLg"> {{ __('auth.snap') }}  </label>
                        </div>
                        <br>
                        @error('snap')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror 

                        @error('card_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror 
                        
                          <button type="submit" style="background: #000; color:#fff" class="btn-auth login">
                                <span>  تحديث البيانات </span>
                          </button>


                    </div>

                </form>
            </div>
        </div>
    </div>
</div>

@endsection