<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\Contact;

use Illuminate\Http\Request;
use DB;
use Auth;
use Hash; 

class ContactController extends Controller {

    //  صفحة اتصل بنا
    public function edit() {
        $data = Contact::where("id", 1)->first();
        return view("admin.contact", compact("data"));
    }


    // انشاء قسم
    public function update(Request $request) {
        Contact::where("id", 1)->update([
                "address_ar"   => $request->address_ar,
                "address_en"   => $request->address_en,
                "phone1"       => $request->phone1,
                "phone2"       => $request->phone2,
                "email1"       => $request->email1,
                "email2"       => $request->email2,
                "facebook"     => $request->facebook,
                "google"       => $request->google,
                "linkedin"     => $request->linkedin,
                "instagram"    => $request->instagram,
                "twitter"      => $request->twitter,
                "whatsapp"     => $request->whatsapp,
                "snap"         => $request->snap,
          ]);
          return back()->with("updated", "تم تعديل البيانات بنجاح");
    }

    // ارسال بريد
    public function mail() {
        $to      = "menaspoon73@gmail.com";
        $name    = $_POST["username"];
        $phone   = $_POST["phone"];
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
