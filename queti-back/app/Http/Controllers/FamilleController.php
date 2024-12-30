<?php

namespace App\Http\Controllers;

use App\Models\Famille;
use Illuminate\Http\Request;

class FamilleController extends Controller
{
    public function index (Request $request){
        // Retrieve 'resultId' from the query parameters
        $resultId = $request->query('resultId');

        // Build the query
        $familles = Famille::query();

        // If 'resultId' is provided, apply the filter
        if ($resultId) {
            $familles->where('id', $resultId);
        }


        $familles = $familles->get();

        return response()->json([
            'status' => true,
            'message' => 'Famille List Successfully',
            'data' => $familles
        ], 200); // code 200, tout va bien
    }
}
