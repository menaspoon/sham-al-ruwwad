<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Admin\Neighborhood;

use Validator, Input, Redirect;
use Auth;

class NeighborhoodController extends Controller {


    function index($id) {
        $data  = Neighborhood::where("city", $id)->get();
        return view("admin.neighborhood", compact("data"));
    }


  function  store(Request $request) {

    $rule = $this->getRule();
    $message = $this->getMessage();

    $validator = Validator::make($request->all(), $rule, $message);
    if($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput($request->all());
      return back()->with("validator", "يرجي التاكد من الحقول");
    }  

    Neighborhood::insert([
        'name_ar'       => $request->name,
    ]);
    return back()->with("created", "تم اضافة البيانات بنجاح");
  }


        // شروط ادخال الحقول
        protected function getRule() {
          return $rule = [
            "name_ar"        => "required|string",
          ];
        }
      
       //   رسائل ادخال الحقول
        protected function getMessage()  {
          return $message = [

          ];
        }



} // ProdactController Class