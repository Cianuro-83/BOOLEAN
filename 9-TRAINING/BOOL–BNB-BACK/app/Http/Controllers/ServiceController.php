<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreServiceRequest;
use App\Http\Requests\UpdateServiceRequest;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
{
    $services = Service::all();
    $deletedServices = Service::onlyTrashed()->get();

    return view('services.index', compact('services', 'deletedServices'));
}

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('services.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreServiceRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreServiceRequest $request)
{
    
    Service::create(['name' => $request->input('name')] + $request->validated());

    return redirect()->route('services.index')
        ->with('success', 'Il servizio è stato creato con successo.');
}


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function edit(Service $service)
    {
        return view('services.edit', compact('service'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateServiceRequest  $request
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateServiceRequest $request, Service $service)
    {
        
        $service->update($request->validated());

        return redirect()->route('services.index')
            ->with('success', 'Il servizio è stato aggiornato con successo.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function destroy(Service $service)
    {
        // Eliminazione soft
        $service->delete();

        return redirect()->route('services.index')
            ->with('success', 'Il servizio è stato eliminato con successo.');
    }
    public function restore($id)
    {
        
        $deletedService = Service::withTrashed()->find($id);
    
       
        if (!$deletedService) {
            return redirect()->route('services.index')->with('error', 'Servizio non trovato.');
        }
    
        // Ripristino
        $deletedService->restore();
    
        return redirect()->route('services.index')->with('success', 'Il servizio è stato ripristinato con successo.');
    }

    public function forceDelete($id)
    {
        $deletedService = Service::withTrashed()->find($id);

        if (!$deletedService) {
            return redirect()->route('services.index')->with('error', 'Servizio non trovato.');
        }

        // Eliminazione definitiva
        $deletedService->forceDelete();

        return redirect()->route('services.index')->with('success', 'Il servizio è stato eliminato definitivamente.');
    }

    

}