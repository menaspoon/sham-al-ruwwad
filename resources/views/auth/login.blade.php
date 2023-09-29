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
                <form method="POST" action="{{ route('login') }}">
                    @csrf

                    <img src="{{ asset('public/logo.png') }}" alt="">

                    <h4>
                        <a href="/login" class="active">{{ __("auth.login") }}</a>
                        <span> | </span>
                        <a href="/register">{{ __("auth.register") }}</a>
                    </h4>

                    <p class="text-center">{{ __("auth.p") }}</p>

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
                    <br>

                    <div class="form-outline  @error('password') is-invalid @enderror">
                        <input type="password" name="password" value="{{ old('password') }}" required autocomplete="password" autofocus class="form-control form-control-lg" />
                        <label class="form-label" for="formControlLg"> {{ __("auth.password") }} </label>
                    </div>
                    
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    <br>
                    <a href="/password/reset#/" class="reset-password"> نسيت كلمة المرور</a>

                    
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
