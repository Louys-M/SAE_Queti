<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Thorax_Abdomen extends Model
{
    protected $fillable = ['id','tho_abd'];
    public $timestamps = false;
    use HasFactory;
}
