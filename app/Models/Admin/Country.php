<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Country extends Model {
    use HasFactory;

    protected $table = 'country';
    protected $fillable = [
        'name_ar', 'name_en'
    ];


}
