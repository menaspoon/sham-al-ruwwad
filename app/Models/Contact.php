<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model {
    use HasFactory;
    protected $table = "contact";
    protected $fillable = [
        'address_ar', 
        'address_en', 
        'phone1', 
        'phone2', 
        'email1', 
        'email2', 
        'google', 
        'linkedin', 
        'instagram', 
        'twitter', 
        'whatsapp', 
        'snap', 
        'updated_at'
    ];

}



