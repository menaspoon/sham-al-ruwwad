@extends('master')
@section('content')


<style>

.pledge .col-md-6 {
    background: #eeeeee40;
    color: #000;
    padding: 50px;
}


.pledge i {
    padding: 0px 10px;
}

.pledge  p {
    display: inline-block;
}

</style>

<br><br><br>

<div class="pledge">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">

        <div>
          <i class="far fa-user"></i>
          <p>يقر المعلن بأحقية الإعلان و الأهلية القانونية لذلك</p>
        </div>

        <div>
          <i class="fal fa-image"></i>
          <p>رفاق صور حقيقية للعقار و ليس نماذج أو مخططات.</p>
        </div>

        <div>
          <i class="fal fa-location"></i>
          <p>الدقة في تحديد الموقع و كتابة تفاصيل الإعلان و معلوماته</p>
        </div>

        <div>
          <i class="far fa-usd-circle"></i>
          <p>تحديد السعر إلزامي، و لا يسمح بوضع السوم</p>
        </div>

        <div>
          <i class="far fa-repeat-alt"></i>
          <p>عدم تكرار الإعلان و الاكتفاء بالتحديث</p>
        </div>

        <div>
          <i class="far fa-times-circle"></i>
          <p>يجب إغلاق الإعلان مباشرة بعد تأجير العقار أو بيعه</p>
        </div>

        <div>
          <p> <i class="far fa-exclamation-circle"></i> مطابقة الإعلان الأحكام و الأنظمة الداخلية و مسؤولية المعلن التامة عن ذلك</p>
        </div>

        <div>
          <p> <i class="far fa-lightbulb-exclamation"></i>يتعهد المعلن بأنه يعمل مسوق مستقل أو مكتب عقاري و أنه غير تابع أو موظف لأي شركة عقارية أو مطور عقاري، و يقر بتححمله كافة المسؤوليات إذا تبين خلاف ذلك</p>
        </div>


        <!-- Default checkbox -->
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
          <label class="form-check-label" for="flexCheckDefault"> اوافق علي الشروط </label>
        </div>
        <br>

        <button class="btn btn-primary" disabled >  أتعهد و أوافق على الشروط   </button>
        <a href="/create" class="btn btn-primary" style="display: none"  >  أتعهد و أوافق على الشروط   </a>

      </div>
    </div>
  </div>
</div>

<br><br>

@endsection