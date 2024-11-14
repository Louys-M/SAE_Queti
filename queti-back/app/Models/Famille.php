<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Famille extends Model
{   
    protected $fillable = ['id','nom_famille','photo','description_1','description_2'];
    public $timestamps = false;
    use HasFactory;
}
