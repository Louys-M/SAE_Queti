<?php

namespace App\Http\Controllers;

use App\Models\Insect;
use Illuminate\Http\Request;

class InsectController extends Controller
{
    public function index (Request $request){
        $insects = Insect::where('nom_sc', '!=', '');

        $insects = $insects->get();
        // recherche tous les Product de la table products
        return response()->json([
            'status' => true,
            'message' => 'Product List Successfully',
            'data' => $insects
        ], 200); // code 200, tout va bien
    }

    public function famille (Request $request){
        $insects = Insect::where('famille_id', '==', $request);

        $insects = $insects->get();
        // recherche tous les Product de la table products
        return response()->json([
            'status' => true,
            'message' => 'Product List Successfully',
            'data' => $insects
        ], 200); // code 200, tout va bien
    }
}
