<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\Offers;

use Illuminate\Http\Request;
use DB;

class SearchController extends Controller {

  function index() {
    $offers = Offers::take(0)->get();
    return view("project.search", compact("offers"));
  }

    function search(Request $request) {
        $query = $request->search;
        $offers = Offers::join("status", "status.id", "=", "offers.status")
        ->join("currency", "currency.id", "=", "offers.currency")
        ->join("category", "category.id", "=", "offers.category")
        //->join("type_estates", "type_estates.id", "=", "offers.type")
        ->select("offers.*", "category.name_ar as category_ar", "status.name_ar as status_ar",  "currency.name_en as currency_en", "currency.name_ar as currency_ar", )
        ->Where('search', "like", "%" . $query . "%")
        ->orderBy("offers.id", "DESC")->get();
        return view("project.search", compact("offers"));
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
        //->orderBy("promoted", "asc")
        //->orderBy("id", "DESC")
        
        ->where('address_ar', "like", "%" . $address . "%")

        ->get();
        

        return view("project.offer.search", compact("offers"));

      }

}
