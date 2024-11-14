<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Insect extends Model
{
    protected $fillable = ['id','nom_sc','nom_fr','photo','description'];
    public $timestamps = false;
    use HasFactory;
    public function familles(){
        return $this->belongsTo(Famille::class);
    }
}
