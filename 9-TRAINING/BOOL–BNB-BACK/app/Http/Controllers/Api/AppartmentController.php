<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Appartment;
use App\Models\Sponsorship;
use App\Models\Service;
use App\Models\Photo;

class AppartmentController extends Controller
{
    public function index(Request $request){
        $onlySponsored = $request->query('only_sponsored');
    
        $query = Appartment::with('Sponsorships', 'user', 'services', 'photos');
    
        if ($onlySponsored) {
            $query->whereHas('Sponsorships', function ($query) {
                $query->where('end_date', '>=', now());
            });
        }
    
        $results = $query->get();
        
        return response()->json($results);
    } 
    


    public function show($id){
        $results = Appartment::where('id',$id)->with( 'user', 'services', 'photos')->first();
            return response()->json($results);
         }

    
}