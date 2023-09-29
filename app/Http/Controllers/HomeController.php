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
        $users = User::count();
        $allOffers = Offers::count();
        $apartment  = Offers::where("type", 1)->count();
        $storey  = Offers::where("type", 2)->count();
        $vila = Offers::where("type", 3)->count();
        $shop  = Offers::where("type", 4)->count();
        $relaxation = Offers::where("type", 6)->count();
        $office = Offers::where("type", 7)->count();
        $land = Offers::where("type", 8)->count();
        $building = Offers::where("type", 9)->count();
        $deposited = Offers::where("type", 10)->count();
        $camp = Offers::where("type", 11)->count();
        $room = Offers::where("type", 12)->count();
        $furnished_apartment = Offers::where("type", 13)->count();
        $chalet = Offers::where("type", 14)->count();
        $farm = Offers::where("type", 15)->count();
        $sold  = Offers::where("status", 1)->count();
        $rented  = Offers::where("status", 2)->count();
        $forRent= Offers::where("category", 1)->count();
        $forSale= Offers::where("category", 2)->count();
        $request_property = DB::table("request_property")->count();
        $request_property_offers= DB::table("request_property_offers")->count();

        return view("home", compact("allOffers", 
                                    "sold", 
                                    "rented", 
                                    "forRent", 
                                    "forSale", 
                                    "users", 
                                    "request_property", 
                                    "request_property_offers",
                                    "apartment", 
                                    "storey", 
                                    "vila", 
                                    "shop", 
                                    "relaxation", 
                                    "office", 
                                    "land", 
                                    "building", 
                                    "deposited", 
                                    "camp", 
                                    "room", 
                                    "furnished_apartment", 
                                    "chalet", 
                                    "farm"
        ));
    }

    public function search() {
        return view("project.search");
    }


    public function index() {
        $offers = Offers::join("status", "status.id", "=", "offers.status")
        ->join("currency", "currency.id", "=", "offers.currency")
        ->join("category", "category.id", "=", "offers.category")
        //->join("type_estates", "type_estates.id", "=", "offers.type")
        ->select("offers.*", "category.name_ar as category_ar", "status.name_ar as status_ar",  "currency.name_en as currency_en", "currency.name_ar as currency_ar", )
        ->orderBy("offers.id", "DESC")->get();
        $status = DB::table("status")->get();
        $category = DB::table("type_estates")->orderBy("id", "ASC")->get();
        $type_estates = DB::table("type_estates")->get();
        return view('project.index', compact("offers", "status", "category", "type_estates"));
    }

    public function category($id) {
        $offers = Offers::join("status", "status.id", "=", "offers.status")
        ->join("currency", "currency.id", "=", "offers.currency")
        ->join("category", "category.id", "=", "offers.category")
        //->join("type_estates", "type_estates.id", "=", "offers.type")
        ->select("offers.*", "category.name_ar as category_ar", "status.name_ar as status_ar",  "currency.name_en as currency_en", "currency.name_ar as currency_ar", )
        ->where("category", $id)->orderBy("id", "DESC")
        ->orderBy("offers.id", "DESC")->get();
        $category = DB::table("type_estates")->orderBy("id", "ASC")->get();
        return view('project.category', compact("offers", "category"));
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
        $single = Offers::join("type_estates", "type_estates.id", "=", "offers.type")
        ->join("currency", "currency.id", "=", "offers.currency")
        //->join("type_estates", "type_estates.id", "=", "offers.type")
        ->select("offers.*", "type_estates.name_ar as type_ar", "type_estates.name_en as type_en", "currency.name_en as currency_en", "currency.name_ar as currency_ar")
        ->where("offers.id", $id)->first();
        $advertiser  = User::where("id", $single->advertiser)->first();
        $gallerys = AdGallery::where("offer", $id)->get();
        return view('project.single', compact("single", "gallerys", "advertiser"));
    }

}
