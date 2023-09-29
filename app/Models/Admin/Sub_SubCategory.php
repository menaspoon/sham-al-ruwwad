<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Sub_SubCategory extends Model {
    use HasFactory;

    protected $table = 'sub_sub_category';
    protected $fillable = [
        'name_ar', 'name_en', 'sub_category', 
    ];


}
