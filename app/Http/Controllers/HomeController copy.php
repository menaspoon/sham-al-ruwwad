<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Offers;
use App\Models\AdGallery;
use App\Models\Contact;
use App\Models\About;
use Auth;
use DB;

class HomeController extends Controller {


    public function home() {
        return view("home");
    }

    public function search() {
        return view("project.search");
    }




    public function category($id) {
        $offers = Offers::join("status", "status.id", "=", "offers.status")
        ->select("offers.*", "status.name_ar as category_ar", "status.name_en as category_en")
        ->where("category", $id)
        ->orderBy("id", "DESC")->get();
        $status = DB::table("status")->get();
        $category = DB::table("category")->orderBy("id", "ASC")->get();
        return view('project.category', compact("offers", "status", "category"));
    }

    public function contact() {
        $data = Contact::where("id", 1)->first();
        return view('project.contact', compact("data"));
    }

    public function about() {
        $data = About::where("id", 1)->first();
        return view('project.about', compact("data"));
    }

    public function single($id) {
        $single = Offers::where("id", $id)->first();
        $advertiser  = User::where("id", $single->advertiser)->first();
        $gallery = AdGallery::where("offer", $id)->get();
        return view('project.single', compact("single", "gallery", "advertiser"));
    }

}
