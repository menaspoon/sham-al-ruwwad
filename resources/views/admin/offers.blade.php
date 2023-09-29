@if(Auth::user()->acount == "admin") 

@extends('master')
@section('content')
<br><br>
<div class="container">
<br>
<a class="btn btn-primary" href="/create"> اضافة عرض جديد  </a>

  @if (Session::has("deleted"))
    <div class="alert alert-success" role="alert">
      {{ Session::get("deleted") }}
    </div>
  @endif
  <table class="border table">
    <thead class="table-dark">
      <th>#</th>
      <th>العرض</th>
      <th>الصورة</th>
      <th>زيارة العرض </th>
      <th> تحكم  </th>
    </thead>
    <tbody>
      <?php $id = 1; ?>
      @foreach ($offers as $item)
        <tr>
          <td>{{ $id++ }}</td>
          <td>{{ $item->name_ar }}</td>
          <td> <img width="100px" src="{{ asset('public/offers/' . $item->picture) }}" alt=""> </td>
          <td> <a href="/single.offer/{{ $item->id }}"> زيارة العرض </a> </td>
          <td> <a href="/edit.offer/{{ $item->id }}">تعديل</a> <a href="/delete.offer/{{ $item->id }}">حذف</a> </td>
        </tr>
      @endforeach
    </tbody>
  </table>
</div>

@endsection
    
    
@endif
