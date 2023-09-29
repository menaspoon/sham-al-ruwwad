<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Terms extends Model {
    use HasFactory;

    protected $table = 'terms';
    protected $fillable = [
        'title_ar', 'title_en', 'text_ar', 'text_en',
    ];


}
