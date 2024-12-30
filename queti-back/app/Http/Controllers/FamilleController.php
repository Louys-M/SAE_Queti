<?php

namespace App\Http\Controllers;

use App\Models\Famille;
use Illuminate\Http\Request;

class FamilleController extends Controller
{
    public function index (Request $request){
        $familles = Famille::where('nom_famille', '!=', '');

        $resultId = $request->query('resultId');
    
        if ($resultId) {
            $familles = Famille::where('result_id', $resultId)->get();
        } else {
            $familles = Famille::all();
        }

        $familles = $familles->get();

        return response()->json([
            'status' => true,
            'message' => 'Product List Successfully',
            'data' => $familles
        ], 200); // code 200, tout va bien
    }
}
