<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Notifications  extends Model {
    use HasFactory;

    protected $table = 'notifications';
    protected $fillable = [
        "user",	"text_ar", "text_en", "user_view", "created"	
    ];


}
