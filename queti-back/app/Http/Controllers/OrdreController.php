<?php

namespace App\Http\Controllers;

use App\Models\Ordre;
use Illuminate\Http\Request;

class OrdreController extends Controller
{
    public function index (Request $request){
        $ordres = Ordre::where('nom_ordre', '!=', '');

        $ordres = $ordres->get();
        // recherche tous les Product de la table products
        return response()->json([
            'status' => true,
            'message' => 'Product List Successfully',
            'data' => $ordres
        ], 200); // code 200, tout va bien
    }
}
