<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Illuminate\Http\Request;
use App\Models\LoveIt;
use App\Models\Offer;

use DB;
use Auth;
use Hash;

class LoveItController extends Controller {


    public function index(Request $request) {
        $offers = LoveIt::join("offers", "offers.id", "=", "love_it.offer")
        ->join("status", "status.id", "=", "offers.status")
        ->join("currency", "currency.id", "=", "offers.currency")
        ->join("category", "category.id", "=", "offers.category")
        ->select("offers.*", "category.name_ar as category_ar", "status.name_ar as status_ar",  "currency.name_en as currency_en", "currency.name_ar as currency_ar", )
        ->where("user", Auth::id())
        ->orderBy("offers.id", "DESC")->get();
        return view("project.liveit", compact("offers"));
    }

    public function store($id) {
        LoveIt::insert([
            "user"              => Auth::id(),
            "offer"             => $id,
        ]);
    }

    
}
