<?php

namespace App\Http\Controllers\Admin;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Terms;

class TermsController extends Controller {

    public function index($type) {
        $data = Terms::where("type", $type)->get();
        return view("project.terms", compact("data"));
    }

    public function all($type) {
        $data = Terms::where("type", $type)->get();
        return view("admin.terms", compact("data"));
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
    
            Terms::insert([
                "type"         => $request->type,
                "title_ar"     => $request->title_ar,
                "title_en"     => $request->title_en,
                "text_ar"      => $request->text_ar,
                "text_en"      => $request->text_en,
            ]);
            return back()->with("created", "تم اضافة القسم  بنجاح");
        }


        public function update(Request $request) {
          Terms::where("id", $request->id)->update([
                "title_ar"      => $request->edit_title_ar,
                "title_en"      => $request->edit_title_en,
                "text_ar"       => $request->edit_text_ar,
                "text_en"       => $request->edit_text_en,
            ]);
            return back()->with("updated", "تم تحديث البيانات بنجاح");
        }



        function edit(Request $request) {
            if($request->ajax()) {
              $id = $request->get('id');
              $data = Terms::where('id', $id)->first();
              return response()->json(["data" => $data]);
            }
        }




        
        // شروط ادخال الحقول
        protected function getRule() {
            return $rule = [
              "title_ar"      => "required|string",
              "title_en"      => "required|string",
              "text_ar"       => "required|string",
              "text_en"       => "required|string",
            ];
          }
        
         //   رسائل ادخال الحقول
          protected function getMessage()  {
            return $message = [
              "title_ar.required"    => __("يرجي ملئ الحقل "),
              "title_en.required"    => __("يرجي ملئ الحقل "),
              "text_ar.required"     => __("يرجي ملئ الحقل "),
              "text_en.required"     => __("يرجي ملئ الحقل "),
            ];
          }

}
