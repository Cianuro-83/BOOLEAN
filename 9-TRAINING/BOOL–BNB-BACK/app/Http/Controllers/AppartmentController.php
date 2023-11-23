<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreAppartmentRequest;
use App\Http\Requests\UpdateAppartmentRequest;
use Illuminate\Support\Facades\Storage;
use App\Models\Appartment;
use App\Models\Photo;
use App\Http\Controllers\TomTomController;
use App\Models\Service;

class AppartmentController extends Controller
{
    public function index()
    {
        $appartments = Appartment::all();
        

        return view('appartments.index', compact('appartments'));
    }

    public function create()
    {   
          // Istanza del controller TomTom
          $tomtomController = new TomTomController();
          $geoData = $tomtomController->getGeoData('address');
        
          $services = Service::all();
          return view('appartments.create', compact('geoData', 'services'));
    }

    public function store(StoreAppartmentRequest $request)
{
    $validated_data = $request->validated();

    $newAppartment = new Appartment($validated_data);
    $newAppartment->visible = $request->has('visible');
    $newAppartment->user_id = auth()->id();
    $newAppartment->save();

    if ($request->hasFile('photos')) {
        foreach ($request->file('photos') as $photo) {
            $path = $photo->store('public/uploads');
    
           
            $contents = json_encode(['path' => $path, 'name' => $photo->getClientOriginalName(), 'extension' => $photo->getClientOriginalExtension()]);
    
            $newPhoto = new Photo([
                'path' => $path,
                'name' => $photo->getClientOriginalName(),
                'extension' => $photo->getClientOriginalExtension(),
            ]);
    
            
            Storage::disk('public')->write('uploads/' . $photo->getClientOriginalName(), $contents);
    
        $newAppartment->photos()->save($newPhoto);
        }
    }
    
    if ($request->has('services')) {
        $newAppartment->services()->sync($request->input('services'));
    } 

    return redirect()->route('appartments.show', $newAppartment->id)
        ->with('success', 'Appartamento creato con successo.');
}

    public function edit(Appartment $appartment)
    {   
        
        $tomtomController = new TomTomController();
        $services = Service::all();
        $geoData = $tomtomController->getGeoData($appartment->address);
        
        return view('appartments.edit', compact('appartment', 'geoData', 'services'));

    }

    public function update(UpdateAppartmentRequest $request, Appartment $appartment)
    {
        $validated_data = $request->validated();

       
        $appartment->update($validated_data);
        $appartment->visible = $request->has('visible');
        $appartment->save();
    
        if ($request->hasFile('photos')) {
            foreach ($request->file('photos') as $photo) {
                $path = $photo->store('public/uploads');
        
                
                $contents = json_encode(['path' => $path, 'name' => $photo->getClientOriginalName(), 'extension' => $photo->getClientOriginalExtension()]);
        
                $newPhoto = new Photo([
                    'path' => $path,
                    'name' => $photo->getClientOriginalName(),
                    'extension' => $photo->getClientOriginalExtension(),
                ]);
        
              
                Storage::disk('public')->write('uploads/' . $photo->getClientOriginalName(), $contents);
        
                $appartment->photos()->save($newPhoto);
            }
        }

        $tomtomController = new TomTomController();
        $geoData = $tomtomController->getGeoData($appartment->address);

        if ($request->has('services')) {
            $appartment->services()->sync($request->services);
        } else {
            $appartment->services()->detach();
        }
        
        return redirect()->route('appartments.show', $appartment->id)
            ->with('success', 'Appartamento aggiornato con successo.');
    }

    public function destroy(Appartment $appartment)
    {
        $appartment->delete();
        return redirect()->route('appartments.index');
    }
    public function show($appartmentId)
{
    $appartment = Appartment::with('photos')->find($appartmentId);

    // Creazione percorsi completi delle immagini
    $photoPaths = [];
    if (!empty($appartment->photos)) {
        foreach ($appartment->photos as $photo) {
            $photoPaths[] = $photo->path; 
        }
    }

    return view('appartments.show', compact('appartment', 'photoPaths'));
}

    
}


    