<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type_Pattes_Post extends Model
{
    protected $fillable = ['id','patte_post_type'];
    public $timestamps = false;
    use HasFactory;
}
