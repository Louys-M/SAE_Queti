<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type_Pattes_Ante extends Model
{
    protected $fillable = ['id','patte_ante_type'];
    public $timestamps = false;
    use HasFactory;
}
