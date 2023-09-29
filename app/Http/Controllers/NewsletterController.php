<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\Newsletter;

use Illuminate\Http\Request;
use DB;
use Auth;
use Hash;

class NewsletterController extends Controller {

    public function index() {
        $data = Newsletter::get();
        return view("admin.newsletter", compact("data"));
    }


    // انشاء قسم
    public function store($email) {
        Newsletter::insert([
                "email"        => $email,
          ]);
    }

    

    
}
