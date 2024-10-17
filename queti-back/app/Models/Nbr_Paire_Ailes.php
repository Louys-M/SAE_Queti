<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nbr_Paire_Ailes extends Model
{
    protected $fillable = ['id','paire_nbr'];
    public $timestamps = false;
    use HasFactory;
}
