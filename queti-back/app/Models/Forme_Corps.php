<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Forme_Corps extends Model
{
    protected $fillable = ['id','corps_forme'];
    public $timestamps = false;
    use HasFactory;
}
