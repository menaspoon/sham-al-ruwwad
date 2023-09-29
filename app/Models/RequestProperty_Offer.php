<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class RequestProperty_Offer extends Model {
    use HasFactory;

    protected $table = 'request_property_offers';
    protected $fillable = [
        "offer", "text", "author", "created"	
    ];


}
