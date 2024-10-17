<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ordre extends Model
{
    protected $fillable = ['id','nom_ordre','photo','description_1','description_2'];
    public $timestamps = false;
    use HasFactory;
}
