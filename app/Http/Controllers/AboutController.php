<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\About;

use Illuminate\Http\Request;
use DB;
use Auth;
use Hash;

class AboutController extends Controller {

    //  صفحة اتصل بنا
    public function edit() {
        $about = About::where("id", 1)->first();
        return view("admin.about", compact("about"));
    }


    // انشاء قسم
    public function update(Request $request) {
        About::where("id", 1)->update([
                "about_ar"     => $request->about_ar,
                "about_en"     => $request->about_en,
                "vision_ar"    => $request->vision_ar,
                "vision_en"    => $request->vision_en,
                "mission_ar"   => $request->mission_ar,
                "mission_en"   => $request->mission_en,
                "manage_ar"    => $request->manage_ar,
                "manage_en"    => $request->manage_en,
          ]);
          return back()->with("updated", "تم تعديل البيانات بنجاح");
    }


    //'picture', 
    //'title_ar', 
    //'title_en', 



    // ارسال بريد
    public function mail() {
        $to      = "menaspoon73@gmail.com";
        $subject = $_POST["subject"];
        $message = $_POST["message"];
        $headers = array(
            'From' => $_POST["email"],
            'Reply-To' => $_POST["email"],
            'X-Mailer' => 'PHP/' . phpversion()
        );

        mail($to, $subject, $message, $headers);

        if(mail($to, $subject, $message, $headers)) :
            echo '              <div class="alert alert-primary" role="alert">
            تم ارسال رسالتك بنجاح سيتم التواصل معك في اقرب وقت
        </div>';
        endif;
    }


    

    
}
