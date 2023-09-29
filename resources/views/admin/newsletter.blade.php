@extends('master')
@section('content')

<div class="container">
  @if (Session::has("deleted"))
    <div class="alert alert-success" role="alert">
      {{ Session::get("deleted") }}
    </div>
  @endif
  <table class="border table">
    <thead class="table-dark">
      <th>#</th>
      <th>البريد الالكتروني</th>
    </thead>
    <tbody>
      <?php $id = 1; ?>
      @foreach ($data as $item)
        <tr>
          <td>{{ $id++ }}</td>
          <td> <a href="mailto:{{ $item->email }}">  {{ $item->email }} </a> </td>
        </tr>
      @endforeach
    </tbody>
  </table>
</div>

@endsection
    
    
