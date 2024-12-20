<?php

namespace App\Http\Controllers;

use App\Models\Insect;
use App\Models\Favori;
use App\Models\Ordre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class InsectController extends Controller
{
    public function like(Request $request)
    {
        try{
            //définition des règles de validation
            $validateLike = Validator::make($request->all(),
            [
                'insect_id' => 'required',
            ]
            );
            //gestion de l'erreur de validation
            if($validateLike->fails()){
                return response()->json([
                    'status '=> false,
                    'message' => 'validation error',
                    'errors' => $validateLike-> errors()
                ],401);
            }
            //si validation ok création du user
            $user = Favori::create([
                'user_id' => auth()->user()->id,
                'insect_id' => $request->insect_id,
            ]);
            //réponse renvoyée au front
            return response()->json([
                'status '=> true,
                'message' => 'Add to favori successfully'
            //création du token dans la table personal_access_token
            ],200);
        }
        catch(\Throwable $th){
            return response()->json([
                'status '=> false,
                'message' => $th->getMessage(),
            ],500); //renvoie une erreur 500 si
        }
    }

    public function unlike(Request $request)
{
    try {
        // Validation rules
        $validateUnlike = Validator::make($request->all(), [
            'insect_id' => 'required',
        ]);

        // Handle validation error
        if ($validateUnlike->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Validation error',
                'errors' => $validateUnlike->errors()
            ], 401);
        }

        // Remove from favoris table
        $deleted = Favori::where('user_id', auth()->user()->id)
            ->where('insect_id', $request->insect_id)
            ->delete();

        if ($deleted) {
            return response()->json([
                'status' => true,
                'message' => 'Removed from favoris successfully'
            ], 200);
        } else {
            return response()->json([
                'status' => false,
                'message' => 'Favorite not found'
            ], 404);
        }
    } catch (\Throwable $th) {
        return response()->json([
            'status' => false,
            'message' => $th->getMessage(),
        ], 500);
    }
}

        public function index (Request $request){
            $insects = Insect::where('nom_sc', '!=', '');
            $insects = $insects->get();
            // recherche tous les Product de la table products
            return response()->json([
                'status' => true,
                'message' => 'insect List Successfully',
                'data' => $insects
            ], 200); // code 200, tout va bien
        }
    
        public function likedInsects(Request $request)
            {
                try {
                    // Récupérer l'utilisateur authentifié
                    $user = auth()->user();

                    // Vérifier si l'utilisateur est authentifié
                    if (!$user) {
                        return response()->json([
                            'status' => false,
                            'message' => 'User not authenticated',
                        ], 401);
                    }

                    // Récupérer les insectes likés par l'utilisateur
                    $likedInsects = Insect::whereIn('id', function ($query) use ($user) {
                        $query->select('insect_id')
                            ->from('favoris')
                            ->where('user_id', $user->id);
                    })->get();

                    // Réponse JSON
                    return response()->json([
                        'status' => true,
                        'message' => 'Liked insects retrieved successfully',
                        'data' => $likedInsects
                    ], 200);
                } catch (\Throwable $th) {
                    return response()->json([
                        'status' => false,
                        'message' => $th->getMessage(),
                    ], 500);
                }
            }

            public function showInsectDetails(Request $request, $id)
                {
                    try {
                        // Récupérer les informations de l'insecte, de sa famille et de son ordre
                        $insect = Insect::join('familles', 'insects.famille_id', '=', 'familles.id')
                            ->join('ordres', 'familles.ordre_id', '=', 'ordres.id')
                            ->where('insects.id', $id)
                            ->select(
                                'insects.*', 
                                'familles.nom_famille', 
                                'ordres.nom_ordre'
                            )
                            ->first();

                        // Vérifier si l'insecte existe
                        if (!$insect) {
                            return response()->json([
                                'status' => false,
                                'message' => 'Insect not found',
                            ], 404);
                        }

                        // Retourner les informations de l'insecte avec sa famille et son ordre
                        return response()->json([
                            'status' => true,
                            'message' => 'Insect details retrieved successfully',
                            'data' => $insect
                        ], 200);
                    } catch (\Throwable $th) {
                        return response()->json([
                            'status' => false,
                            'message' => $th->getMessage(),
                        ], 500);
                    }
                }


}
