<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Plans extends Model {
    use HasFactory;

    protected $table = 'plans';
    protected $fillable = [
        'id', 'name_ar', 'name_en',	'price', 'currency', 'count',
    ];


}
