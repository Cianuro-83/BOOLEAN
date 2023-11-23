@extends('layouts.app')
@section('content')
    @vite('resources/scss/appartmentView.scss')

    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <h1>Dettagli Appartamento: <span>{{ $appartment->name }}</span></h1>
            </div>
            <div class="card-body">

                {{-- cilo foto --}}
                <div class="image-container text-center">
                    @foreach ($photoPaths as $photoPath)
                        <a href="{{ asset('storage/' . $photoPath) }}">
                            <img class="thumbnail" src="{{ asset('storage/' . $photoPath) }}" alt="Photo"
                                style="width: 100px; height: 100px; margin: 5px;">
                        </a>
                    @endforeach
                </div>
                {{-- servizi --}}
                <div>
                    <p>Servizi:</p>
                    @if ($appartment->services->isNotEmpty())
                        <ul>
                            @foreach ($appartment->services as $service)
                                <li>{{ $service->name }}</li>
                            @endforeach
                        </ul>
                    @else
                        <p>Nessun servizio disponibile</p>
                    @endif
                </div>
                <div>


                    <ul>

                        <li><i class="fa-solid fa-bed"></i><strong>N. stanze:</strong> {{ $appartment->rooms }}</li>
                        <li><strong>N. letti:</strong> {{ $appartment->beds }}</li>
                        <li><strong>N. bagni:</strong> {{ $appartment->bathrooms }}</li>
                        <li><strong>Metri quadri:</strong> {{ $appartment->mq }}</li>
                        <li><strong>Indirizzo:</strong> {{ $appartment->address }}</li>
                        <li><strong>Latitudine:</strong> {{ $appartment->lat }}</li>
                        <li><strong>Longitudine:</strong> {{ $appartment->lon }}</li>
                        <li><strong>Visibilità:</strong> {{ $appartment->visible ? 'Si' : 'No' }}</li>
                    </ul>

                    <a href="{{ route('appartments.edit', ['appartment' => $appartment->id]) }}"
                        class="btn btn-primary">Modifica</a>
                    <a href="{{ url()->previous() }}" class="btn btn-secondary">Torna Indietro</a>
                </div>

            </div>

        </div>
    </div>
@endsection
