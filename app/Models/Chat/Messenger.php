<?php

namespace App\Models\Chat;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Messenger extends Model {
    use HasFactory;

    protected $table = 'messenger';

    protected $fillable = [
        "user",	"responsible", "ads", "date", "sender", "user_view", "view"
    ];


}
