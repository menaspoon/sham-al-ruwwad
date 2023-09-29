<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use App\Models\Admin\SubCategory;
use App\Models\Admin\Sub_SubCategory;
use Illuminate\Http\Request;


class Sub_SubCategoryController extends Controller {


    public function index($id) {
        $loops = Sub_SubCategory::where("Sub_category", $id)->orderBy("id", "DESC")->paginate(20);
        return view("admin.sub_sub_category", compact("loops"));
    }



    // انشاء قسم
    public function store(Request $request) {
        $rule = $this->getRule();
        $message = $this->getMessage();
    
        $validator = Validator::make($request->all(), $rule, $message);
        if($validator->fails()) {
          return redirect()->back()->withErrors($validator)->withInput($request->all());
          return back()->with("validator", "يرجي التاكد من الحقول");
        }  

        Sub_SubCategory::insert([
            "name_ar"       => $request->name_ar,
            "name_en"       => $request->name_en,
            "sub_category"  => $request->category,
        ]);
        return back()->with("created", "تم اضافة القسم  بنجاح");
    }




    
    // تحديث البيانات 
    public function update(Request $request) {
        Sub_SubCategory::where("id", $request->id)->update([
            "name_ar"       => $request->edit_name_ar,
            "name_en"       => $request->edit_name_en,
        ]);
        return back()->with("updated", "تم تحديث البيانات بنجاح");
    }


 


        




    function edit(Request $request) {
        if($request->ajax()) {
          $id = $request->get('id');
          $data = Sub_SubCategory::where('id', $id)->first();
          return response()->json(["data" => $data]);
        }
    }




        // شروط ادخال الحقول
        protected function getRule() {
          return $rule = [
            "name_ar"      => "required|string",
            "name_en"      => "required|string",
            "category"     => "required|string",
          ];
        }
      
       //   رسائل ادخال الحقول
        protected function getMessage()  {
          return $message = [
            "name_ar.required"    => __("يرجي ملئ الحقل "),
            "name_en.required"    => __("يرجي ملئ الحقل "),
            "category.required"   => __("يرجي ملئ الحقل "),
          ];
        }

    
}
