<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Auth;

class Neighborhood extends Model {

    use HasFactory;

    protected $table = 'neighborhood';

    protected $fillable = [
        "id", "name_ar", "name_en", "city"
    ];




}
