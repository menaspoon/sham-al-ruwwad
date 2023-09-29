@if(Auth::user()->acount == "admin") 

@extends('layouts.app')
@section('content')
<br><br><br>
<div>
  <div class="container">
<style>
  svg { display: none !important;}
</style>

    <div class="row">
      <div class="col-md-6">
          <h2>الابلاغ عن العروض</h2>
      </div>
    </div>

    <br><br>


{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
@if (Session::has("created"))
  <div class="alert alert-success texe-center text-center" role="alert">
    {{ Session::get("created") }}
  </div>
@endif

@if (Session::has("updated"))
  <div class="alert alert-success texe-center text-center" role="alert">
    {{ Session::get("updated") }}
  </div>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
<br>
    

    <div class="box-table">
      <table class="table border">
        <thead>
          <tr class="parent">
            <th scope="col">#</th>
            <th scope="col"> رابط العرض </th>
            <th scope="col">  المشكلة  </th>
          </tr>
        </thead>
        <tbody > 
          <?php $id = 1 ?>
          @foreach ($data as $item)
           <tr>
              <td>{{ $id++ }}</td>
              <td> <a href="/details/{{ $item->offer }}">رابط العرض</a></td>
              <td>{{ $item->text }}</td>
            </tr>
          @endforeach
        </tbody>
      </table>
      {{ $data->links() }}

    </div>

  </div>
</div>

@endsection

@else
<br><br><br><br>
<div class="alert alert-danger container text-center" role="alert"> are not authorized to enter here! </div>
@endif
