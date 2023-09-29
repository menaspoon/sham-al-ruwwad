<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;

use Illuminate\Http\Request;
use App\Models\Report;

use DB;
use Auth;
use Hash;

class ReportController extends Controller {


    public function index(Request $request) {
        $data = Report::orderBy("id", "DESC")->paginate();
        return view("admin.report", compact("data"));
    }


    public function store($id, $text, $type) {
        Report::insert([
            "text"             => $text,
            "offer"            => $id,
            "type"             => $type,
        ]);
    }

    
    public function report_offers() {
        $data = Report::where("type", "offer")->orderBy("id", "DESC")->paginate();
        return view("admin.report_offers", compact("data"));
    }


    public function report_users() {
        $data = Report::where("type", "advertiser")->orderBy("id", "DESC")->paginate();
        return view("admin.report_users", compact("data"));
    }
    
}
