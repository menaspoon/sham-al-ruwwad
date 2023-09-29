<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class RequestProperty extends Model {
    use HasFactory;

    protected $table = 'request_property';
    protected $fillable = [
        "advertiser", "name",	"phone",	"type",	"city",	"start",	"end",	"room",	"bathroom",	"district_1",	"district_2",	"district_3",	"district_4",	"description",	"status",	"created"	
    ];


}
