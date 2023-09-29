<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Subscribe extends Model {
    use HasFactory;

    protected $table = 'subscribe';
    protected $fillable = [
        'id', 'user', 'plan', 'count', 'counter', 'status', 'currency', 'created'	
    ];


}
