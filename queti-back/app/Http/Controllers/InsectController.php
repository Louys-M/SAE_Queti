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
            'message' => 'Insects List Successfully',
            'data' => $insects
        ], 200); // code 200, tout va bien
    }

    public function parFamille (Request $request){
        $insects = Insect::where('nom_sc', '!=', '');

        if(isset($insects->famille_id) && $request->famille_id != ''){
            $insects = $insects->where('famille_id',$request->famille_id);
        }

        $insects = $insects->get();
        // recherche tous les Product de la table products
        return response()->json([
            'status' => true,
            'message' => 'Chosen Insects List Successfully',
            'data' => $insects
        ], 200); // code 200, tout va bien
    }
}
