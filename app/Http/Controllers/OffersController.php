<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Offers;
use App\Models\AdGallery;
use App\Models\User;
use App\Models\Admin\City;
use App\Models\Admin\Neighborhood;
use DB;
use Auth;

class OffersController extends Controller {

    public function pledge() {
        return view("project.pledge");
    }

    public function index() {
        $offers = Offers::get();
        return view("admin.offers", compact('offers'));
    }

    public function my_ad() {
        $advertiser  = User::where("id", Auth::id())->first();

        $offers = Offers::join("status", "status.id", "=", "offers.status")
        ->join("currency", "currency.id", "=", "offers.currency")
        ->join("category", "category.id", "=", "offers.category")
        //->join("type_estates", "type_estates.id", "=", "offers.type")
        ->select("offers.*", "category.name_ar as category_ar", "status.name_ar as status_ar",  "currency.name_en as currency_en", "currency.name_ar as currency_ar", )
        ->where("advertiser", $advertiser->id)
        ->orderBy("offers.id", "DESC")->get();

        return view("project.my_ad", compact('offers', 'advertiser'));
    }

    public function advertiser($id) {
        $advertiser  = User::where("id", $id)->first();
        $offers = Offers::where("advertiser", $advertiser->id)->get();
        return view("project.advertiser", compact('offers', 'advertiser'));
    }

    public function delete_offer ($id) {
        Offers::where("id", $id)->delete();
        return back()->with("deleted", "تم حذف البيانات بنجاح");
    }

    public function delete_gallery($id) {
        AdGallery::where("id", $id)->delete();
    }

    public function delete_pictur($id) {
        Offers::where("id", $id)->update([
            "picture" => " "
        ]);
    }

    

    public function edit($id) {

        $gallery = AdGallery::where("offer", $id)->get();
        $offer   = Offers::where("id", $id)->first();
        $status = DB::table("status")->get();
        $category = DB::table("category")->get();
        $type_estates = DB::table("type_estates")->get();
        $face_estates = DB::table("face_estates")->get();
        $currency = DB::table("currency")->get();
        $city = City::get();
        $neighborhood = Neighborhood::get();

        $singleTypeEstates = DB::table("type_estates")->where("id",  $offer->type)->first();
        $singleCurrency = DB::table("currency")->where("id",  $offer->currency)->first();
        $singleCategory = DB::table("category")->where("id",  $offer->category)->first();
        $singleCity = City::where("id",  $offer->city)->first();
        $singleNeighborhood = Neighborhood::where("id",  $offer->neighborhood)->first();

        return view("admin.edit", compact('offer', 'gallery', 'status', 'category', "face_estates", "type_estates", "currency", "city", "neighborhood",
        "singleTypeEstates", "singleCurrency", "singleCategory", "singleCity", "singleNeighborhood"
        ));
    }



    public function create() {
        $status = DB::table("status")->get();
        $category = DB::table("category")->get();
        $type_estates = DB::table("type_estates")->get();
        $face_estates = DB::table("face_estates")->get();
        $currency = DB::table("currency")->get();
        $city = City::get();
        $neighborhood = Neighborhood::get();
        return view("admin.create", compact('status', 'category', "type_estates", "face_estates", "currency", "city", "neighborhood"));
    }


        function get_neighborhood(Request $request) {
        if($request->ajax()) {
          $id = $request->get('id');
          $data = Neighborhood::where('city', $id)->get();
          foreach ($data as $item) :
            echo "<option value=". $item->id .">" . $item->name_ar . "</option>";
          endforeach;
        }
    }


    // اضافة عرض
    public function store(Request $request) {

        $advertiser = User::where("id", Auth::id())->first();
        $type = DB::table("type_estates")->where("id", $request->type)->first();
        $face = DB::table("face_estates")->where("id", $request->face)->first();
        $category = DB::table("category")->where("id", $request->category)->first();
        $status = DB::table("status")->where("id", $request->status)->first();

        $search = $request->name_ar ." - " . $request->address_ar ." - ". $request->city ." - ". $type->name_ar ." - ". $type->name_en ." - ". $category->name_ar ." - ". $category->name_en;
        if ($request->hasfile('floor')) :
            $fileExtintion = $request->floor->getclientoriginalextension();
            $fileNameFloor = time() . "." . $fileExtintion;
            $path = "public/offers";
            $request->floor->move($path, $fileNameFloor);
        else :
            $fileNameFloor = "";
        endif;
        Offers::insert([
            "advertiser"     => $advertiser->id,
            "name_ar"        => $request->name_ar,
            "name_en"        => $request->name_en,
            "text_ar"        => $request->description_ar,
            "text_en"        => $request->description_en,
            "price"          => $request->price,
            "status"         => "0",
            "address_ar"     => $request->address_ar,
            "address_en"     => $request->address_en,
            "type"           => $request->type,
            //"type_ar"        => $request->type_ar,
            //"type_en"        => $request->type_en,
            "parking"        => $request->parking,
            "bedroom"        => $request->bedroom,
            "bath"           => $request->bath,
            "sqft"           => $request->sqft,
            "health_ar"      => $request->health_ar,
            "health_en"      => $request->health_en,
            "education_ar"   => $request->education_ar,
            "education_en"   => $request->education_en,
            "lat"            => $request->lat,
            "lng"            => $request->lng,
            "floor"          => $fileNameFloor,
            //"status"         => $request->status,
            "category"       => $request->category,
            
            "hall"           => $request->hall,
            "board"          => $request->board,
            "elevator"       => $request->elevator,
            "kitchen"        => $request->kitchen,
            "services"       => $request->services,
            "adaptation"     => $request->adaptation,
            "badron"         => $request->badron,
            "swimming_pool"  => $request->swimming_pool,
            "driver_room"    => $request->driver_room,
            "servant_room"   => $request->servant_room,
            "laundry_room"   => $request->laundry_room,

            "city"           => $request->city,
            "neighborhood"   => $request->neighborhood,
            
            "district"       => $request->district,
            "face"           => $request->face,
            "floors"         => $request->floors,
            "carpark"        => $request->carpark,
            "currency"       => $request->currency,
            "shops"          => $request->shops,
            "property_age"   => $request->property_age,
            "street_width"   => $request->street_width,

            "length"   => $request->length,
            "width"    => $request->width,
            "advertiser_relationship"    => $request->advertiser_relationship,
            "families"    => $request->families,
            "rental_term"    => $request->rental_term,
            "furnished"    => $request->furnished,
            "car_entrance"    => $request->car_entrance,
            "property_floor_no"    => $request->property_floor_no,

            "apartment"        => $request->apartment,
            "hall_stair"       => $request->hall_stair,
            "verse"            => $request->verse,
            "cellar"           => $request->cellar,
            "duplex"           => $request->duplex,
            "area"             => $request->area,

            "appendix"             => $request->appendix,
            "football_stadium"     => $request->football_stadium,
            "volleyball_court"     => $request->volleyball_court,
            "amusement_park"       => $request->amusement_park,
            "families_category"    => $request->families_category,
            "purpose"              => $request->purpose,


            "number_of_wells"      => $request->number_of_wells,
            "number_of_trees"      => $request->number_of_trees,

            "bathroom"             => $request->bathroom,
            "bedroom_hall"         => $request->bedroom_hall,
            "store_number"         => $request->store_number,
            "flat_apartment"       => $request->flat_apartment,
            "floor_balance"        => $request->floor_balance,
            "advertiser_phone"     => $request->advertiser_phone,


            "search"   => $search,
            

        ]);

        $ad = Offers::orderBy("id", "DESC")->first();

        if ($request->hasfile('pictures')) {
           $images = $request->file('pictures');
          foreach($images as $image) {
            $fileExtintion = $image->getclientoriginalextension();
            echo $fileName = md5(mt_rand(0, 32) . time()) . "." . $fileExtintion;
            $path = "public/offers";
            $image->move($path, $fileName);
            if($ad->picture == null) :
                Offers::where("id", $ad->id)->update([ 'picture' => $fileName ]);
            endif;
            AdGallery::insert([
                'photo' => $fileName,
                'offer' => $ad->id,
                'extintion' => $fileExtintion,
            ]);
          }
        }

            return back()->with("created", "تم انشاء العرض بنجاح");

    }







    public function update(Request $request) {
        if ($request->hasfile('floor')) :
            $fileExtintion = $request->floor->getclientoriginalextension();
            $fileNameFloor = time() . "." . $fileExtintion;
            $path = "public/offers";
            $request->floor->move($path, $fileNameFloor);
        else :
            $fileNameFloor = "";
        endif;
        Offers::where("id", $request->id)->update([

            "name_ar"        => $request->name_ar,
            "name_en"        => $request->name_en,
            "text_ar"        => $request->description_ar,
            "text_en"        => $request->description_en,
            "price"          => $request->price,
            "address_ar"     => $request->address_ar,
            "address_en"     => $request->address_en,
            "type"           => $request->type,
            //"type_ar"        => $request->type_ar,
            //"type_en"        => $request->type_en,
            "parking"        => $request->parking,
            "bedroom"        => $request->bedroom,
            "bath"           => $request->bath,
            "sqft"           => $request->sqft,
            "health_ar"      => $request->health_ar,
            "health_en"      => $request->health_en,
            "education_ar"   => $request->education_ar,
            "education_en"   => $request->education_en,
            "lat"            => $request->lat,
            "lng"            => $request->lng,
            "floor"          => $fileNameFloor,
            "status"         => $request->status,
            "category"       => $request->category,
            
            "hall"           => $request->hall,
            "board"          => $request->board,
            "elevator"       => $request->elevator,
            "kitchen"        => $request->kitchen,
            "services"       => $request->services,
            "adaptation"     => $request->adaptation,
            "badron"         => $request->badron,
            "swimming_pool"  => $request->swimming_pool,
            "driver_room"    => $request->driver_room,
            "servant_room"   => $request->servant_room,
            "laundry_room"   => $request->laundry_room,

            "city"           => $request->city,
            "neighborhood"   => $request->neighborhood,
            
            "district"       => $request->district,
            "face"           => $request->face,
            "floors"         => $request->floors,
            "carpark"        => $request->carpark,
            "currency"       => $request->currency,
            "shops"          => $request->shops,
            "property_age"   => $request->property_age,
            "street_width"   => $request->street_width,

            "length"   => $request->length,
            "width"    => $request->width,
            "advertiser_relationship"    => $request->advertiser_relationship,
            "families"    => $request->families,
            "rental_term"    => $request->rental_term,
            "furnished"    => $request->furnished,
            "car_entrance"    => $request->car_entrance,
            "property_floor_no"    => $request->property_floor_no,

            "apartment"        => $request->apartment,
            "hall_stair"       => $request->hall_stair,
            "verse"            => $request->verse,
            "cellar"           => $request->cellar,
            "duplex"           => $request->duplex,
            "area"             => $request->area,

            "appendix"             => $request->appendix,
            "football_stadium"     => $request->football_stadium,
            "volleyball_court"     => $request->volleyball_court,
            "amusement_park"       => $request->amusement_park,
            "families_category"    => $request->families_category,
            "purpose"              => $request->purpose,


            "number_of_wells"      => $request->number_of_wells,
            "number_of_trees"      => $request->number_of_trees,

            "bathroom"             => $request->bathroom,
            "bedroom_hall"         => $request->bedroom_hall,
            "store_number"         => $request->store_number,
            "flat_apartment"       => $request->flat_apartment,
            "floor_balance"        => $request->floor_balance,
            "advertiser_phone"     => $request->advertiser_phone,

        ]);

        $ad = Offers::where("id", $request->id)->first();


        if ($request->hasfile('pictures')) {
           $images = $request->file('pictures');
          foreach($images as $image) {
            $fileExtintion = $image->getclientoriginalextension();
            echo $fileName = md5(mt_rand(0, 32) . time()) . "." . $fileExtintion;
            $path = "public/offers";
            $image->move($path, $fileName);
            if($ad->picture == null || $ad->picture == " ") :
                Offers::where("id", $request->id)->update([ 'picture' => $fileName ]);
            endif;
            AdGallery::insert([
                'photo' => $fileName,
                'offer' => $request->id,
                'extintion' => $fileExtintion,
            ]);
          }
        }
        
        return back()->with("created", "تم انشاء العرض بنجاح");

    }



}