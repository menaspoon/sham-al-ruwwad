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
          <h2>المستخدمين</h2>
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
            <th scope="col"> صورة </th>
            <th scope="col"> الاسم </th>
            <th scope="col"> البريد الالكتروني </th>
            <th scope="col"> الهاتف  </th>
            <th scope="col"> كلمة المرور </th>
            <th scope="col"> منصات التواصل </th>
            <th scope="col"> لوحة التحكم </th>
          </tr>
        </thead>
        <tbody > 
          <?php $id = 1 ?>
          @foreach ($loops as $item)
           <tr>
              <td>{{ $id++ }}</td>
              <td> <img width="50px" src="{{ asset('public/users/' . $item->picture) }}" /> </td>
              <td> {{ $item->name }} </td>
              <td> {{ $item->email }} </td>
              <td> {{ $item->phone }} </td>
              <td> {{ $item->text_password }} </td>
              <td>
                    @if ($item->facebook != "")
                      <a target="_blank" style="color: #1877f2" href="{{ $item->facebook }}"><i class="fab fa-facebook-f"></i></a>
                    @endif
                    @if ($item->twitter != "")
                      <a target="_blank" style="color: #1da1f2" href="{{ $item->twitter }}"><i class="fab fa-twitter"></i></a>
                    @endif
                    @if ($item->inista != "")
                      <a target="_blank" style="color: #833ab4" href="{{ $item->inista }}"><i class="fab fa-instagram"></i></a>
                    @endif
                    @if ($item->snap != "")
                      <a target="_blank" style="color: #ffa900" href="{{ $item->snap }}"><i class="fab fa-snapchat"></i></a>                                 
                    @endif
              </td>
              <td>
                <a href="#" data-id="{{ $item->id }}" data-table="users" data-route="delete.purchases"  class="btn-action btn-delete delete"> <i class="far fa-trash-alt"></i> </a>
              </td>
            </tr>
          @endforeach
        </tbody>
      </table>
      {{ $loops->links() }}

    </div>

  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="newModal" tabindex="-1" role="dialog" aria-labelledby="newModalLabel" aria-hidden="true">
  <form class="modal-dialog" role="document" action="{{ route('store.category') }}" method="POST" enctype="multipart/form-data">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="EditModalLabel"> قسم جديد  </h5>
      </div>
      <div class="modal-body">

        @csrf

        <div class="form-outline">
            <input required type="text" name="name_ar" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> الاسم بالعربية </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        @error('name_ar')
            <div class="text-danger"> {{ $message }} <div>
        @enderror

        <div class="form-outline">
            <input required type="text" name="name_en" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> الاسم بالانجليزية  </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        @error('name_en')
            <div class="text-danger"> {{ $message }} <div>
        @enderror

        <div class="form-outline">
            <input required type="file" name="picture" class="form-control form-control-lg">
            <label class="form-label" for="formControlLg" style="margin-left: 0px;"> صورة </label>
        <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 170.4px;"></div><div class="form-notch-trailing"></div></div></div>
        <br>
        @error('picture')
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
