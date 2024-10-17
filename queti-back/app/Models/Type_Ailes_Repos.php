<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type_Ailes_Repos extends Model
{
    protected $fillable = ['id','aile_repos_type'];
    public $timestamps = false;
    use HasFactory;
}
