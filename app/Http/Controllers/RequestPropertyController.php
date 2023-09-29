<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\RequestProperty;
use App\Models\RequestProperty_Offer;
use App\Models\Notifications;

use Auth;

class RequestPropertyController extends Controller {

    public function index() {
        $data = RequestProperty::where("status", "wating")->get();
        return view("project.request_property.index", compact("data"));
    }

    public function my_request() {
        $data = RequestProperty::where("status", "wating")->get();
        return view("project.request_property.my_request", compact("data"));
    }


    public function edit($id) {
        $data = RequestProperty::where("id", $id)->first();
        return view("project.request_property.edit", compact("data"));
    }

    public function delete($id) {
        $data = RequestProperty::where("id", $id)->delete();
        return back()->with("deleted", "تم اضافة القسم  بنجاح");
    }

    public function delete_offer($id) {
        $data = RequestProperty_Offer::where("id", $id)->delete();
        return back()->with("deleted", "");
    }

    public function single($id) {
      $data = RequestProperty::where("id", $id)->first();
      $offers = RequestProperty_Offer::join("users", "users.id", "=", "request_property_offers.author")
      ->select("users.*", "request_property_offers.*")
      ->where("request_property_offers.offer", $id)->get();
      return view("project.request_property.single", compact("data", "offers"));
    }

    // انشاء اعلان عقار
    public function store(Request $request) {
            $rule = $this->getRule();
            $message = $this->getMessage();
        
            $validator = Validator::make($request->all(), $rule, $message);
            if($validator->fails()) {
              return redirect()->back()->withErrors($validator)->withInput($request->all());
              return back()->with("validator", "يرجي التاكد من الحقول");
            }  
    
            RequestProperty::insert([
                "advertiser"     => Auth::user()->id,
                "name"	         => $request->name,
                "phone"		       => $request->phone,
                "type"		       => $request->type,
                "city"		       => $request->city,
                "start"		       => $request->start,
                "end"		         => $request->end,
                "room"		       => $request->room,
                "bathroom"		   => $request->bathroom,
                "district_1"		 => $request->district_1,
                "district_2"		 => $request->district_2,
                "district_3"		 => $request->district_3,
                "district_4"		 => $request->district_4,
                "description"    => $request->description,
                //"created"		     => $request->

            ]);
            return back()->with("created", "تم اضافة القسم  بنجاح");
        }


        
    public function store_offer(Request $request) {
          $rule = $this->getRuleAddOffer();
          $message = $this->getMessage();
      
          $validator = Validator::make($request->all(), $rule, $message);
          if($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput($request->all());
            return back()->with("validator", "يرجي التاكد من الحقول");
          }  
  
          RequestProperty_Offer::insert([
              "author"         => Auth::user()->id,
              "offer"          => $request->id,
              "text"          => $request->offer,
              "created"    => date("j, n, Y"),
          ]);

          Notifications::insert([
              "user"         => $request->advertiser,
              "text_ar"        => $request->offer,
              "created"    => date("j, n, Y"),
              "user_view"      => $request->advertiser
          ]);

          return back()->with("created", "تم اضافة القسم  بنجاح");
    }


      //user	int(11)			Yes	NULL			Change Change	Drop Drop	


      




        public function update(Request $request) {
          $rule = $this->getRule();
          $message = $this->getMessage();
      
          $validator = Validator::make($request->all(), $rule, $message);
          if($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput($request->all());
            return back()->with("validator", "يرجي التاكد من الحقول");
          }  
          
            RequestProperty::where("id", $request->id)->update([
              "name"	         => $request->name,
              "phone"		       => $request->phone,
              "type"		       => $request->type,
              "city"		       => $request->city,
              "start"		       => $request->start,
              "end"		         => $request->end,
              "room"		       => $request->room,
              "bathroom"		   => $request->bathroom,
              "district_1"		 => $request->district_1,
              "district_2"		 => $request->district_2,
              "district_3"		 => $request->district_3,
              "district_4"		 => $request->district_4,
              "description"    => $request->description,
            ]);
            return back()->with("updated", "تم تحديث البيانات بنجاح");
        }


/*
        function edit(Request $request) {
            if($request->ajax()) {
              $id = $request->get('id');
              $data = RequestProperty::where('id', $id)->first();
              return response()->json(["data" => $data]);
            }
        }
*/

        
        // شروط ادخال الحقول
        protected function getRule() {
            return $rule = [
              "name"           => "required|string",
              "phone"          => "required|string",
              "type"           => "required|string",
              "city"           => "required|string",
              "start"          => "required|string",
              "end"            => "required|string",
              "room"           => "required|string",
              "bathroom"       => "required|string",
              "district_1"     => "required|string",
              "district_2"     => "required|string",
              "district_3"     => "required|string",
              "district_4"     => "required|string",
              "description"    => "required|string",
            ];
          }


        
         //   رسائل ادخال الحقول
          protected function getMessage()  {
            return $message = [
              "name.required"    => __("يرجي ملئ الحقل "),
              "phone.required"    => __("يرجي ملئ الحقل "),
              "type.required"     => __("يرجي ملئ الحقل "),
              "city.required"     => __("يرجي ملئ الحقل "),
            ];
          }










          public function getRuleAddOffer(Type $var = null) {
            return  $rule = [
              "offer"        => "required|string",
              "advertiser"   => "required|string",
              "id"           => "required|string",
            ];
          }

          //   رسائل ادخال الحقول
          protected function getMessageAddOffer()  {
            return $message = [
              "offer.string"    => __("يرجي ملئ الحقل "),
              "advertiser.string"    => __("يرجي ملئ الحقل "),
              "id.string"     => __("يرجي ملئ الحقل "),
            ];
          }

}
