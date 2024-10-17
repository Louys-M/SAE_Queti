<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nbr_Cerques extends Model
{
    protected $fillable = ['id','cerque_nbr'];
    public $timestamps = false;
    use HasFactory;
}
