<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Illuminate\Http\Request;
use App\Models\Rating;

use DB;
use Auth;
use Hash;

class RatingController extends Controller {


    public function store(Request $request) {
        $chech = Rating::where("ip", $_SERVER['REMOTE_ADDR'])->where("type", $request->type)->where("offer", $request->offer)->count();
        if ($chech > 0) {
            return "isSet";
        } else {
            Rating::insert([
                "ip"        => $_SERVER['REMOTE_ADDR'],
                "rat"       => $request->rat,
                "type"      => $request->type,
                "offer"     => $request->offer,
            ]);
            return "Success";
        }
    }

    //  استرجاع بيانات الحسابات
    public function acount() {
        $single = DB::table("users")->where("id", Auth::user()->id)->first();
        return view("project.acount", compact("single"));
    }





    
    // تحديث البيانات 
    public function update(Request $request) {
        DB::table('users')->where("id", $request->id)->update([
            "name"        => $request->edit_name,
            "email"       => $request->edit_email,
            "phone"       => $request->edit_phone,
            "text_password"    => $request->edit_password,
            "password"    => Hash::make($request->edit_password),
        ]);
        return back()->with("updated", "تم تحديث البيانات بنجاح");
    }



    // تحديث بيانات الحساب
    public function update_acount (Request $request) {
        DB::table('users')->where("id", Auth::user()->id)->update([
            "name"        => $request->name,
            "email"       => $request->email,
            "phone"       => $request->phone,
            "text_password"    => $request->password,
            "password"    => Hash::make($request->password),
        ]);
        return back()->with("updated", "تم تحديث البيانات بنجاح");
    }



    function edit(Request $request) {
        if($request->ajax()) {
          $id = $request->get('id');
          $data = DB::table('users')->where('id', $id)->first();
          return response()->json(["data" => $data]);
        }
    }

    function delete($id) {
        DB::table('users')->where('id', $id)->delete();
        return back()->with("deleted", "تم حذف الحساب بنجاح");
    }


    

    
}
