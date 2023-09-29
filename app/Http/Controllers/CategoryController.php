<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\Admin\Category;
use Illuminate\Http\Request;


class CategoryController extends Controller {

    // Get Categories Page
    public function index() {
        $loops = Category::orderBy("id", "DESC")->paginate(20);
        return view("admin.category", compact("loops"));
    }



    // Store Category
    public function store(Request $request) {

        $rule = $this->getRule();
        $message = $this->getMessage();
        $validator = Validator::make($request->all(), $rule, $message);
        if($validator->fails()) {
          return redirect()->back()->withErrors($validator)->withInput($request->all());
          return back()->with("validator", "يرجي التاكد من الحقول");
        }  

        $fileExtintion = $request->picture->getclientoriginalextension();
        $fileName = time() . "." . $fileExtintion;
        $path = "puplic/category";
        $request->picture->move($path, $fileName);

        Category::insert([
            "name_ar"       => $request->name_ar,
            "name_en"       => $request->name_en,
            "picture"       => $fileName,
        ]);

        return back()->with("created", "تم اضافة القسم  بنجاح");

    } // End Store Category




    
    // Update Category
    public function update(Request $request) {

        if($request->edit_picture) :
          $fileExtintion = $request->edit_picture->getclientoriginalextension();
          $fileName = time() . "." . $fileExtintion;
          $path = "puplic/category";
          $request->edit_picture->move($path, $fileName);

          Category::where("id", $request->id)->update([
              "name_ar"       => $request->edit_name_ar,
              "name_en"       => $request->edit_name_en,
              "picture"       => $fileName,
          ]);

        else :

          Category::where("id", $request->id)->update([
              "name_ar"       => $request->edit_name_ar,
              "name_en"       => $request->edit_name_en,
          ]);
        endif;

        return back()->with("updated", "تم تحديث البيانات بنجاح");
    } // End Update Category


 


        



    // Get Categery For Update Data
    function edit(Request $request) {
        if($request->ajax()) {
          $id = $request->get('id');
          $data = Category::where('id', $id)->first();
          return response()->json(["data" => $data]);
        }
    }




    // شروط ادخال الحقول
    protected function getRule() {
      return $rule = [
        "name_ar"      => "required|string",
        "name_en"      => "required|string",
        'picture'      => 'required|mimes:png,jpg,jpeg|max:2048',
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

    
} // End CategoryController
