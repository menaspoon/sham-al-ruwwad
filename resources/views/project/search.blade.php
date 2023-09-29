@extends('master')
@section('content')


<style>
.other-upper-page {
    background: url(http://mironmahmud.com/assets/images/discuss-bg.png) #4253ce;
    padding: 60px 100px;
    color: #000;
    margin-top: 50px;
    text-align: center
}

.other-upper-page  .filter {
    padding: 52px 41px;
    /*background: #0000007a;*/
    margin-top: 58px;
}

.other-upper-page .filter .search, .other-upper-page .filter select {
    width: 270px;
    padding: 10px;
    color: #000;
    outline: none;
    /* height: 49px; */
    border-radius: 50px;
    border-style: none;
    background: #ffffffba;
}

.other-upper-page .filter select {
  padding: 7px;_
}


.other-upper-page  .filter .other {
    margin-top: 40px;
}


.other-upper-page .filter .other input {
    padding: 5px;
    width: 100px;
    margin: 5px 3px;
    border-radius: 7px;
    text-align: center;
    font-size: 15px;
    border-radius: 50px;
}

.other-upper-page .space {
  display: inline-block;
  width: 24%;
}

.other-upper-page  .space label{
  display: block;
  color: #fff
}


.other-upper-page .space input {
    width: 100%;
    padding: 8px;
    border-radius: 50px;
    border-style: none;
    background: #ffffffba;

}

.other-upper-page .select select {
  width: 150px;
}


.other-upper-page button {
    background: #000000c7;
    margin-top: 52px;
    border-radius: 100px;
    padding: 10px 29px;
    width: 600px;
    color: #fff;
    border-style: none;
}

#search {
  width: 600px;
}

</style>


<div class="other-upper-page">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-10">

        <form action="{{ route("search.form") }}" method="POST" class="filter">
          @csrf
          <input type="text" class="search" id="search" name="search" placeholder="عن ماذ تبحث">
          <button> بحث </button>
        </form>

      </div>
    </div>
    
  </div>
</div>


<br><br>


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
              @if($item->category)
                <div class="popup"> {{ $item->category_ar  }} </div>
              @endif
              @if($item->status)
                  <div class="pay"> {{ $item->status_ar  }} </div>
              @endif
              <div class="price"> {{ $item->price }} ريال سعودي </div>
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


@endsection

  






