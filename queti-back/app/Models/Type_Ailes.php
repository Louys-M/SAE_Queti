<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type_Ailes extends Model
{
    protected $fillable = ['id','aile_type'];
    public $timestamps = false;
    use HasFactory;
}
