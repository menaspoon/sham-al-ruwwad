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
          <h2>الاحيــــــــــاء</h2>
      </div>

      <div class="col-md-6">
        <a  data-toggle="modal" data-target="#newModal" class="btn btn-primary btn-new"> اضافة </a>
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

@if (Session::has("deleted"))
  <div class="alert alert-success texe-center text-center" role="alert">
    {{ Session::get("deleted") }}
  </div>
@endif
{{------------------------------  رسالةانشاء وتحديث البيانات  -----------------------------}}
<br>
    

    <div class="box-table">
      <table class="table border">
        <thead>
          <tr class="parent">
            <th scope="col">#</th>
            <th scope="col"> الحي </th>
            <th scope="col"> تحكم </th>
          </tr>
        </thead>
        <tbody > 
          <?php $id = 1 ?>
          @foreach ($data as $item)
           <tr>
              <td>{{ $id++ }}</td>
              <td>{{ $item->name_ar }}</a>
              <td>
                <!-- <a href="#" data-id="{{ $item->id }}" class="btn-action edit"  data-toggle="modal" data-target="#EditModal"> <i class="fas fa-pencil-alt"></i> </a> -->
                <a href="/delete.neighborhood/{{ $item->id }}"  class="btn-action"> <i class="far fa-trash-alt"></i> </a>
              </td>
            </tr>
          @endforeach
        </tbody>
      </table>

    </div>

  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="newModal" tabindex="-1" role="dialog" aria-labelledby="newModalLabel" aria-hidden="true">
  <form class="modal-dialog" role="document" action="{{ route('store.neighborhood') }}" method="POST" enctype="multipart/form-data">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="EditModalLabel"> حي جديد  </h5>
      </div>
      <div class="modal-body">

        @csrf

        <input type="hidden" name="city" value="{{ request()->route('id') }}" />

        <div class="form-outline">
            <input required type="text" name="name_ar" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> اسم الحي </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        @error('name_ar')
            <div class="text-danger"> {{ $message }} <div>
        @enderror

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
        <button type="submit" class="btn btn-primary save-data update-supplier"> حفــــظ </button>
      </div>
    </div>
  </form>
</div>










<!-- Modal -->
<div class="modal fade" id="EditModal" tabindex="-1" role="dialog" aria-labelledby="EditModalLabel" aria-hidden="true">
  <form class="modal-dialog" role="document" action="{{ route('update.category') }}" method="POST">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="EditModalLabel"> تحديث البيانات </h5>
      </div>
      <div class="modal-body">

        @csrf
        <input type="hidden" id="id" name="id">

        <div class="form-outline">
          <input required type="text" id="name_ar" name="edit_name_ar" class="form-control form-control-lg">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> الاسم بالعربية </label>
      <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
      <br>


      <div class="form-outline">
          <input required type="text" id="name_en" name="edit_name_en" class="form-control form-control-lg">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> الاسم بالانجليزية  </label>
      <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
      <br>


      <div class="form-outline">
          <input  type="file" name="edit_picture" class="form-control form-control-lg">
          <label class="form-label" for="formControlLg" style="margin-left: 0px;"> صورة </label>
      <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
      <br>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
        <button type="submit" class="btn btn-primary save-data update-supplier"> حفــــظ </button>
      </div>
    </div>
  </form>
</div>














<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>




    // Get Order Detelse For Edit
    $(document).on("click", ".edit", function() {
      var id = $(this).data("id");
      var token         = $("input[name='_token']").val();
      $.ajax({
        url: "/ajax.edit.category",
        data:{token:token, id:id },
        success:function (html) {
          $("#EditModal .modal-body #id").val(html.data.id);
          $("#EditModal .modal-body #name_ar").val(html.data.name_ar);
          $("#EditModal .modal-body #name_en").val(html.data.name_en);
          
          $("#EditModal .modal-body .form-label").css("top", "-12px")
          $("#EditModal .modal-body .form-label").css("background", "#fff")
          $("#EditModal .modal-body .form-label").css("padding", "0px 10px")
          $("#EditModal .modal-body .form-label").css("z-index", "100")
        }
      });
    });
    // Get Order Detelse For Edit
</script>



@endsection

@else
<br><br><br><br>
<div class="alert alert-danger container text-center" role="alert"> are not authorized to enter here! </div>
@endif