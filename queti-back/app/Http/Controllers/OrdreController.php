<?php

namespace App\Http\Controllers;

use App\Models\Famille;
use App\Models\Insect;
use App\Models\Ordre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class OrdreController extends Controller
{
    public function Ranger(Request $request)
    {
        try{
            //définition des règles de validation
            $validateWatch = Validator::make($request->all(),
            [
                'video_id' => 'required',
                'ordre_id' => 'required',
            ]
            );
            //gestion de l'erreur de validation
            if($validateWatch->fails()){
                return response()->json([
                    'status '=> false,
                    'message' => 'validation error',
                    'errors' => $validateWatch-> errors()
                ],401);
            }
            //si validation ok création du user
            $user = Associer::create([
                'video_id' => $request->video_id,
                'ordre_id'=> $request->ordre_id,
            ]);
            //réponse renvoyée au front
            return response()->json([
                'status '=> true,
                'message' => 'la video est ranger successfully'
            ],200);
        }
        catch(\Throwable $th){
            return response()->json([
                'status '=> false,
                'message' => $th->getMessage(),
            ],500); //renvoie une erreur 500 si
        }
    }

    public function TriOrdre(Request $request)
    {
        // Validation de l'input, genre_id est requis pour le tri
        $validateOrdre = Validator::make($request->all(), [
            'ordre_id' => 'required|exists:ordre,id', // Vérifie que genre_id existe bien dans la table genres
        ]);
    
        // Gestion des erreurs de validation
        if ($validateOrdre->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Validation error',
                'errors' => $validateCat->errors()
            ], 400);
        }
    
        // Jointure entre les tables vidéos et associer (la table intermédiaire)
        $familles = Famille::join('ordres', 'familles.ordre_id', '=', 'ordres.id')
            ->where('familles.ordre_id', $request->ordre_id) // Filtre par genre_id dans la table associer
            ->select('familles.*') // Sélection des colonnes vidéos
            ->get();
    
        // Retourne les résultats
        return response()->json([
            'status' => true,
            'message' => 'Videos List Successfully',
            'data' => $familles
        ], 200);
    }
}
