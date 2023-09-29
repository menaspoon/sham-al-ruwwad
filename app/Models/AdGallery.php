<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdGallery extends Model {
    use HasFactory;


    protected $table = 'gallery';
    protected $fillable = [
        "id", "photo",  "offer", "extintion"
    ];

}



