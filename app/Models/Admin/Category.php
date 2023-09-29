<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Category extends Model {
    use HasFactory;

    protected $table = 'category';

    protected $fillable = [
        'name_ar', 'name_en', 'picture', 
    ];


}
