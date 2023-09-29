@if(Auth::user()->acount == "admin") 

@extends('layouts.app')
@section('content')

<br><br><br>

<div class="dashbord">
    <div class="container">
        <h3 class="text-center">لوحــــــة الاحصائيـــــــات</h3>
        <br><br>
        <div class="row">

            <div class="col-md-3">
                <div class="count">
                    <span>المستخدمين</span>
                    <strong>{{ $users }}</strong>
                </div>
            </div>
 
            <div class="col-md-3">
                <div class="count">
                    <span>عدد العروض</span>
                    <strong>{{ $allOffers }}</strong>
                </div>
            </div>


            <div class="col-md-3">
                <div class="count">
                    <span>تم البيع</span>
                    <strong>{{ $sold }}</strong>
                </div>
            </div>

            <div class="col-md-3">
                <div class="count">
                    <span>تم الايجار</span>
                    <strong>{{ $rented }}</strong>
                </div>
            </div>

            <div class="col-md-3">
                <div class="count">
                    <span>للايجار</span>
                    <strong>{{ $forRent }}</strong>
                </div>
            </div>

            <div class="col-md-3">
                <div class="count">
                    <span>للبيع</span>
                    <strong>{{ $forSale }}</strong>
                </div>
            </div>

            <div class="col-md-3">
                <div class="count">
                    <span>طلب العقار</span>
                    <strong>{{ $request_property }}</strong>
                </div>
            </div>

            <div class="col-md-3">
                <div class="count">
                    <span>رد علي طلب عقار</span>
                    <strong>{{ $request_property_offers }}</strong>
                </div>
            </div>
            


            <div class="col-md-2">
                <div class="count counts">
                    <span>شقة</span>
                    <strong>{{ $apartment }}</strong>
                </div>
            </div>

            <div class="col-md-2">
                <div class="count counts">
                    <span>دور</span>
                    <strong>{{ $storey }}</strong>
                </div>
            </div>

            <div class="col-md-2">
                <div class="count counts">
                    <span>فيلا</span>
                    <strong>{{ $vila }}</strong>
                </div>
            </div>

            <div class="col-md-2">
                <div class="count counts">
                    <span>محل</span>
                    <strong>{{ $shop }}</strong>
                </div>
            </div>

            <div class="col-md-2">
                <div class="count counts">
                    <span>استراحة</span>
                    <strong>{{ $relaxation }}</strong>
                </div>
            </div>
            <div class="col-md-2">
                <div class="count counts">
                    <span>مكتب تجاري</span>
                    <strong>{{ $office }}</strong>
                </div>
            </div>
            <div class="col-md-2">
                <div class="count counts">
                    <span>ارض</span>
                    <strong>{{ $land }}</strong>
                </div>
            </div>
            <div class="col-md-2">
                <div class="count counts">
                    <span>عمارة</span>
                    <strong>{{ $building }}</strong>
                </div>
            </div>
            <div class="col-md-2">
                <div class="count counts">
                    <span>مستودع</span>
                    <strong>{{ $deposited }}</strong>
                </div>
            </div>
            <div class="col-md-2">
                <div class="count counts">
                    <span>مخيم</span>
                    <strong>{{ $camp }}</strong>
                </div>
            </div>
            <div class="col-md-2">
                <div class="count counts">
                    <span>غرفة</span>
                    <strong>{{ $room }}</strong>
                </div>
            </div>
            <div class="col-md-2">
                <div class="count counts">
                    <span>شقة مفروشة</span>
                    <strong>{{ $furnished_apartment }}</strong>
                </div>
            </div>
            <div class="col-md-2">
                <div class="count counts">
                    <span> شالية </span>
                    <strong>{{ $chalet }}</strong>
                </div>
            </div>
            <div class="col-md-2">
                <div class="count counts">
                    <span> مزرعة </span>
                    <strong>{{ $farm }}</strong>
                </div>
            </div>

        </div>
    </div>
</div>

<style>
.counts {
    padding: 25px 10px;
    background: #f3f0f0;
}
</style>
@endsection

@endif

