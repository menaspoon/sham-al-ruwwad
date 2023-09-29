<?php

namespace App\Http\Controllers\Admin;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\Admin\Country;
use Illuminate\Http\Request;


class CountryController extends Controller {


    public function index() {
        $loops = Country::orderBy("id", "DESC")->get();
        return view("admin.country", compact("loops"));
    }



    // انشاء مدينة
    public function store(Request $request) {
        $rule = $this->getRule();
        $message = $this->getMessage();
    
        $validator = Validator::make($request->all(), $rule, $message);
        if($validator->fails()) {
          return redirect()->back()->withErrors($validator)->withInput($request->all());
          return back()->with("validator", "يرجي التاكد من الحقول");
        }  

        Country::insert([
            "name_ar"       => $request->name_ar,
            "name_en"       => $request->name_en,
        ]);
        return back()->with("created", "تم اضافة القسم  بنجاح");
    }




    
    // تحديث البيانات 
    public function update(Request $request) {
          Country::where("id", $request->id)->update([
              "name_ar"       => $request->edit_name_ar,
              "name_en"       => $request->edit_name_en,
          ]);
        return back()->with("updated", "تم تحديث البيانات بنجاح");
    }


 


        




    function edit(Request $request) {
        if($request->ajax()) {
          $id = $request->get('id');
          $data = Country::where('id', $id)->first();
          return response()->json(["data" => $data]);
        }
    }




        // شروط ادخال الحقول
        protected function getRule() {
          return $rule = [
            "name_ar"      => "required|string",
            "name_en"      => "required|string",
          ];
        }
      
       //   رسائل ادخال الحقول
        protected function getMessage()  {
          return $message = [
            "name_ar.required"    => __("يرجي ملئ الحقل "),
            "name_en.required"    => __("يرجي ملئ الحقل "),
            "file.required"     => __("يرجي رفع الصورة"),
            "file.mimes"        => __("نوع الملف غير مدعوم"),
            "file.max"          => __("الحد الاقصي لرفع الصور 2 MB"),
          ];
        }

    
}
