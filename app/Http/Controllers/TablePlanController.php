<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Illuminate\Http\Request;
use DB;
use Auth;
use Hash;

class TablePlanController extends Controller {

    public function index() {
        //$loops = DB::table("users")->paginate();
        return view("project.table_plan");
    }

    

    //  استرجاع بيانات الحسابات
    public function acount() {
        $single = DB::table("users")->where("id", Auth::user()->id)->first();
        return view("project.acount", compact("single"));
    }


    // انشاء حساب موظف
    public function store(Request $request) {
        DB::table('users')->insert([
            "name"        => $request->name,
            "email"       => $request->email,
            "phone"       => $request->phone,
            "text_password"    => $request->password,
            "password"    => Hash::make($request->password),
            "role"           => $request->role,
        ]);
        return back()->with("created", "تم اضافة الحساب بنجاح");
    }



    
    // تحديث البيانات 
    public function update(Request $request) {
        if ($request->file) :
            $fileExtintion = $request->file->getclientoriginalextension();
            $fileName = time() . "." . $fileExtintion;
            $path = "public/users";
            $request->file->move($path, $fileName);
            DB::table('users')->where("id", Auth::user()->id)->update([
                "name"        => $request->name,
                "email"       => $request->email,
                "phone"       => $request->phone,
                "picture"     => $fileName,
                "text_password"    => $request->password,
                "password"    => Hash::make($request->password),
            ]);
        else :
            DB::table('users')->where("id", Auth::user()->id)->update([
                "name"        => $request->name,
                "email"       => $request->email,
                "phone"       => $request->phone,
                "text_password"    => $request->password,
                "password"    => Hash::make($request->password),
            ]);
            endif;
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
