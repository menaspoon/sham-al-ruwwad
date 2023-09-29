<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin\City;

use Validator, Input, Redirect;
use Auth;

class CityController extends Controller {

    // Get Cities Page
    function index() {
        $data  = City::get();
        return view("admin.city", compact("data"));
    }

    // Delete City
    function delete($id) {
        $data  = City::where("id", $id)->delete();
        return back()->with("deleted", "تم حذف البيانات بنجاح");
    }


    // Store City
    function  store(Request $request) {

      $rule = $this->getRule();
      $message = $this->getMessage();
      $validator = Validator::make($request->all(), $rule, $message);
      if($validator->fails()) {
        return redirect()->back()->withErrors($validator)->withInput($request->all());
        return back()->with("validator", "يرجي التاكد من الحقول");
      }  

      City::insert([
          'name_ar'       => $request->name_ar,
      ]);

      return back()->with("created", "تم اضافة البيانات بنجاح");

    } // End Store City



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

    // شروط ادخال الحقول
    protected function editRule() {
      return $rule = [
          "edit_title"        => "string",
          "edit_description"  => "string",
          "edit_video"        => "string",
          "edit_price"        => "string",
          "edit_class"        => "string",
          "edit_hour"         => "string",
          //'edit_picture'      => 'required|mimes:png,jpg,jpeg|max:2048',
      ];
    }
      
    //   رسائل ادخال الحقول
      protected function editMessage()  {
        return $message = [
      ];
    }


} // End CityController