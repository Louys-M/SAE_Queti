<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type_Cerque extends Model
{
    protected $fillable = ['id','cerque_type'];
    public $timestamps = false;
    use HasFactory;
}
