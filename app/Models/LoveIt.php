<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class LoveIt extends Model {
    use HasFactory;

    protected $table = 'love_it';
    protected $fillable = [
        "id", "offer", "user"
    ];


}
