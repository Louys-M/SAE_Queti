<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InsectController extends Controller
{
    public function index()
    {
        return InsectResource::collection(Insect::all());
    }

    public function store(Request $request)
    {
        $insect = Insect::create($request->all());
        return new InsectResource($insect);
    }

    public function show($id)
    {
        $insect = Insect::findOrFail($id);
        return new InsectResource($insect);
    }

    public function update(Request $request, $id)
    {
        $insect = Insect::findOrFail($id);
        $insect->update($request->all());
        return new InsectResource($insect);
    }

    public function destroy($id)
    {
        $insect = Insect::findOrFail($id);
        $insect->delete();
        return response()->json(null,204);
    }

}
