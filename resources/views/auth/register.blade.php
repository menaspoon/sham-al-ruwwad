@extends('master')

@section('content')
<br><br><br>

<style>
    
.login-page h4 {
    padding: 29px;
    text-align: center;
    font-size: 22px;
    color: #999;
}

.login-page h4 a {
    color: #999;
    font-weight: bold
}

.login-page h4 .active {
    color: #000;
}

.login-page img {
    margin: auto;
    display: table;
}

</style>


<div class="login-page">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <form method="POST" action="{{ route('register') }}">
                    @csrf

                    <img src="{{ asset('public/logo.png') }}" alt="">

                    <h4>
                        <a href="/login">{{ __("auth.login") }}</a>
                        <span>|</span>
                        <a href="/register" class="active">{{ __("auth.register") }}</a>
                    </h4>

                    <p class="text-center">{{ __("auth.p") }}</p>

                    <div class="form-outline  @error('name') is-invalid @enderror">
                        <input type="text" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus class="form-control form-control-lg" />
                        <label class="form-label" for="formControlLg"> {{ __("auth.username") }} </label>
                    </div>
                    <br>
                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror



                    <div class="form-outline  @error('email') is-invalid @enderror">
                        <input type="text" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus class="form-control form-control-lg" />
                        <label class="form-label" for="formControlLg"> {{ __("auth.email") }} </label>
                    </div>
                    <br>
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror




                    <div class="form-outline  @error('password') is-invalid @enderror">
                        <input type="text" name="password" value="{{ old('password') }}" required autocomplete="password" autofocus class="form-control form-control-lg" />
                        <label class="form-label" for="formControlLg"> {{ __("auth.password") }} </label>
                    </div>
                    
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    <br>


                    <div class="form-outline">
                        <input type="text" name="password_confirmation" required autocomplete="new-password" class="form-control form-control-lg" />
                        <label class="form-label" for="formControlLg"> {{ __("auth.password") }} </label>
                    </div>
                    
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    <br>


                    @if (Route::has('password.request'))
                        <a class="btn btn-link" href="{{ route('password.request') }}">
                            {{ __('auth.rorgot') }}
                        </a>
                    @endif
                    
                    <br><br>
                    <button style="width: 100%" type="submit" class="btn btn-primary">
                        {{ __('auth.login') }}
                    </button>


                </form>
            </div>
        </div>
    </div>
</div>

<br><br><br>

@endsection

