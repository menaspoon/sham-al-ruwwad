<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offers extends Model {
    use HasFactory;
    protected $fillable = [
        "name_ar",
        "name_en",
        "address_ar",
        "address_en",
        "price",
        "type",
        "parking",
        "bedroom",
        "bath",
        "sqft",
        "health_ar",
        "health_en",
        "education_ar",
        "education_en",
        "text_ar",
        "text_en",
        "lat",
        "lng",
        "picture",
        "floor",
        "status",
        "category",

        "hall",
        "board",
        "elevator",
        "kitchen",
        "services",
        "adaptation",
        "badron",
        "swimming_pool",
        "driver_room",
        "servant_room",
        "laundry_room",
        "district",
        "face",
        "floors",
        "carpark",
        "length",
        "width",
        "advertiser_relationship",
        "car_entrance",
        "property_floor_no",
        "furnished",
        "rental_term",
        "families",
        "search",

        "apartment",
        "hall_stair",
        "verse",
        "cellar",
        "duplex",
        "area",
        "appendix",
        
        "football_stadium",
        "volleyball_court",
        "amusement_park",
        "families_category",

        "purpose",
        "number_of_wells",
        "number_of_trees",
        
        "bathroom",
        "bedroom_hall",
        "store_number",
        "flat_apartment",
        "floor_balance",
        "advertiser_phone",
        "advertiser_phone",
        "neighborhood",
        
        "search",


    ];

}







