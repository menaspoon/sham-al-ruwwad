<?php

namespace App\Http\Controllers\Admin;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Plans;

class PlansController extends Controller {

    public function index() {
        $data = Plans::get();
        return view("project.table_plan", compact("data"));
    }

    public function all() {
        $loops = Plans::get();
        return view("admin.plan", compact("loops"));
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
    
            Plans::insert([
                "name_ar"      => $request->name_ar,
                "name_en"      => $request->name_en,
                "count"        => $request->count,
                "price"        => $request->price,
                "currency"     => $request->currency,
            ]);
            return back()->with("created", "تم اضافة القسم  بنجاح");
        }


        public function update(Request $request) {
          Plans::where("id", $request->id)->update([
                "name_ar"      => $request->edit_name_ar,
                "name_en"      => $request->edit_name_en,
                "count"        => $request->edit_count,
                "price"        => $request->edit_price,
            ]);
            return back()->with("updated", "تم تحديث البيانات بنجاح");
        }



        function edit(Request $request) {
            if($request->ajax()) {
              $id = $request->get('id');
              $data = Plans::where('id', $id)->first();
              return response()->json(["data" => $data]);
            }
        }



        
        // شروط ادخال الحقول
        protected function getRule() {
            return $rule = [
              "name_ar"      => "required|string",
              "name_en"      => "required|string",
              "count"        => "required|string",
              "price"        => "required|string",
              "currency"     => "required|string",
            ];
          }
        
         //   رسائل ادخال الحقول
          protected function getMessage()  {
            return $message = [
              "name_ar.required"    => __("يرجي ملئ الحقل "),
              "name_en.required"    => __("يرجي ملئ الحقل "),
              "count.required"      => __("يرجي ملئ الحقل "),
              "price.required"      => __("يرجي ملئ الحقل "),
              "currency.required"   => __("يرجي ملئ الحقل "),
            ];
          }

}
