<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class City extends Model {
    use HasFactory;

    protected $table = 'city';
    protected $fillable = [
        'name_ar', 'name_en', 'country'
    ];


}
