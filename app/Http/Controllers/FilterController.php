<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\Offers;
use App\Models\Admin\City;
use App\Models\Admin\Neighborhood;
	
use Illuminate\Http\Request;
use DB;

class FilterController extends Controller {

    function index() {
        $offers = Offers::join("status", "status.id", "=", "offers.status")
            ->join("currency", "currency.id", "=", "offers.currency")
            ->join("category", "category.id", "=", "offers.category")
            ->select("offers.*", "category.name_ar as category_ar", "status.name_ar as status_ar",  "currency.name_en as currency_en", "currency.name_ar as currency_ar", )
            ->orderBy("offers.id", "DESC")->get();
        $type_estates = DB::table("type_estates")->get();
        $face_estates = DB::table("face_estates")->get();
        $city = City::get();
        $neighborhood = Neighborhood::get();
        return view("project.filter", compact("type_estates", "offers", "face_estates", "city", "neighborhood"));
    }

    function search(Request $request) {
        $query = Offers::join("status", "status.id", "=", "offers.status")
                ->join("currency", "currency.id", "=", "offers.currency")
                ->join("category", "category.id", "=", "offers.category")
                //->join("type_estates", "type_estates.id", "=", "offers.type")
                ->select("offers.*", "category.name_ar as category_ar", "status.name_ar as status_ar",  "currency.name_en as currency_en", "currency.name_ar as currency_ar", )
                ->orderBy("offers.id", "DESC")->query();
        // المدينة
        if (request()->has('city')) {
            $query->where("city", request("city"));
        }
        // الحي
        if (request()->has('neighborhood') && request("neighborhood") != "0") {
            $query->where("neighborhood", request("neighborhood"));
        }
        // نوع العقار
        if (request()->has('type') && request("type") != "0") {
            $query->where("type", request("type"));
        }
        //  السعر
        if (request()->has('min_price') && request("min_price") != "0") {
            $query->where("price", "=>", request("min_price"));
        }
        //  السعر
        if (request()->has('max_price') && request("max_price") != "0") {
            $query->where("price", "=<", request("max_price"));
        }
        $offers = $query->get();
        $type_estates = DB::table("type_estates")->get();
        $face_estates = DB::table("face_estates")->get();
        $city = City::get();
        $neighborhood = Neighborhood::get();
        return view("project.filter", compact("offers", 
                                              "type_estates", 
                                              "face_estates", 
                                              "city", 
                                              "neighborhood"
        ));

      }


    function advanced_search(Request $request) {
        $query = $request->search;
        $address = $request->address;
        $offers = Offer::where('advertiser', "like", "%" . $query . "%")
        ->orWhere('name_ar', "like", "%" . $query . "%")
        ->orWhere('name_en', "like", "%" . $query . "%")
        ->orWhere('description_ar', "like", "%" . $query . "%")
        ->orWhere('description_en', "like", "%" . $query . "%")
        ->orWhere('category', "like", "%" . $query . "%")
        ->orWhere('sub_category', "like", "%" . $query . "%")
        ->orWhere('status', "like", "%" . $query . "%")
        ->orWhere('price', "like", "%" . $query . "%")
        ->orWhere('price_after_discount', "like", "%" . $query . "%")
        ->orWhere('currency', "like", "%" . $query . "%")
        ->orWhere('created', "like", "%" . $query . "%")
        ->orWhere('category_name', "like", "%" . $query . "%")
        ->orWhere('sub_category_name', "like", "%" . $query . "%")
        ->orWhere('sub_sub_category_name', "like", "%" . $query . "%")
        ->orWhere('status_name', "like", "%" . $query . "%")
        ->where('address_ar', "like", "%" . $address . "%")
        ->get();
        return view("project.offer.search", compact("offers"));
      }

}
