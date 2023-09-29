<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Media extends Model {
    use HasFactory;
    protected $table = 'media';
    protected $fillable = ['facebook', 'google', 'linkedin', 'instagram', 'twitter', 'whatsapp', 'snap'];
}
