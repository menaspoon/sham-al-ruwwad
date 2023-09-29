<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class About extends Model {
    use HasFactory;
    protected $table = "about";
    protected $fillable = [
        'picture', 
        'title_ar', 
        'title_en', 
        'about_ar', 
        'about_en', 
        'vision_ar', 
        'vision_en', 
        'mission_ar', 
        'mission_en', 
        'manage_ar', 
        'manage_en', 
        'updated_at'
    ];

}









