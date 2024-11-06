<?php

namespace App\Http\Controllers;

use App\Models\Famille;
use Illuminate\Http\Request;

class FamilleController extends Controller
{
    public function index (Request $request){
        $familles = Famille::where('nom_famille', '!=', '');

        $familles = $familles->get();

        // recherche tous les Product de la table products
        return response()->json([
            'status' => true,
            'message' => 'Product List Successfully',
            'data' => $familles
        ], 200); // code 200, tout va bien
    }
}
