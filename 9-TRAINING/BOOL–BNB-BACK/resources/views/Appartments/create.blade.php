@extends('layouts.app')

@section('content')
    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <h2>Nuovo Appartamento</h2>
            </div>
            <div class="card-body">
                <form action="{{ route('appartments.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="name" class="form-label"><strong>Nome appartamento <span
                                            class="text-danger">*</span></strong></label>
                                <input type="text" id="names" name="name"
                                    class="form-control @error('name') is-invalid @enderror editable-field edit_name required"
                                    value="{{ old('name') }}">
                                @error('name')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="rooms" class="form-label"><strong>Numero di stanze <span
                                            class="text-danger">*</span></strong></label>
                                <input type="number" name="rooms" id="rooms"
                                    class="form-control @error('rooms') is-invalid @enderror editable-field edit_rooms required"
                                    value="{{ old('rooms') }}" autocomplete="current-rooms">
                                @error('rooms')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="beds" class="form-label"><strong>Numero di letti<span
                                            class="text-danger">*</span></strong></label>
                                <input type="number" name="beds" id="beds"
                                    class="form-control @error('beds') is-invalid @enderror editable-field edit_beds required"
                                    value="{{ old('beds') }}">
                                @error('beds')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="bathrooms" class="form-label"><strong>Numero di bagni<span
                                            class="text-danger">*</span></strong></label>
                                <input type="number" name="bathrooms" id="bathrooms"
                                    class="form-control @error('bathrooms') is-invalid @enderror editable-field edit_bathrooms required"
                                    value="{{ old('bathrooms') }}" autocomplete="current-bathrooms">
                                @error('bathrooms')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="mq" class="form-label"><strong>Metri quadri<span
                                            class="text-danger">*</span><br><span style="font-size: 10px">Usa il . per
                                            separare gli interi dai decimali</span></strong></label>
                                <input type="text" name="mq" id="mq"
                                    class="form-control @error('mq') is-invalid @enderror edit_mq editable-field"
                                    value="{{ old('mq') }}">
                                @error('mq')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="address" class="form-label"><strong>Indirizzo<span
                                            class="text-danger">*</span><br><span style="font-size: 10px">Inizia a digitare
                                            l'indirizzo e poi <strong>clicca sui
                                                suggerimenti</strong></span></strong></label>
                                <input type="text" name="address" id="address"
                                    class="form-control @error('address') is-invalid @enderror editable-field edit_address"
                                    value="{{ old('address') }}">
                                <div id="address-suggestions"></div>
                                @error('address')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="lat" class="form-label"><strong>Latitudine</strong><br><span
                                        style="font-size: 10px"><strong>Si autocompleta cliccando sui suggerimenti
                                            dell'indirizzo</strong></span></label>
                                <input type="text" name="lat" id="lat"
                                    class="form-control @error('lat') is-invalid @enderror" readonly
                                    value="{{ old('lat') }}">
                                @error('lat')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="lon" class="form-label"><strong>Longitudine</strong><br><span
                                        style="font-size: 10px"><strong>Si autocompleta cliccando sui suggerimenti
                                            dell'indirizzo</strong></span></label>
                                <input type="text" name="lon" id="lon"
                                    class="form-control @error('lon') is-invalid @enderror " readonly
                                    value="{{ old('lon') }}">
                                @error('lon')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="photos" class="form-label"><strong>Foto</strong></label>
                                <input type="file" name="photos[]" class="form-control" multiple>
                                @error('photos')
                                    <div class="invalid-feedback" style="color: red">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="visible" class="form-label"><strong>Visibilità</strong></label>
                                        <div class="form-check">
                                            <input type="checkbox" name="visible" id="visible"
                                                class="form-check-input" value="1"
                                                {{ old('visible') ? 'checked' : '' }}>
                                            <label class="form-check-label" for="visible">Pubblica Appartamento</label>
                                        </div>
                                        @error('visible')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        @foreach ($services as $service)
                            <div class="col-md-6">
                                <div class="form-check">
                                    <input type="checkbox" name="services[]" value="{{ $service->id }}"
                                        {{ in_array($service->id, old('services', [])) ? 'checked' : '' }}>
                                    <label class="form-check-label">{{ $service->name }}</label>
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <button type="submit" id="btn_create" class="btn btn-primary">Crea Appartamento</button>
                    <a href="{{ url()->previous() }}" class="btn btn-secondary">Torna Indietro</a>

                </form>
            </div>
        </div>
    </div>

    {{-- SCRIPT PER LA GESTIONE DEL TOMTOM --}}
    @vite('resources/js/appartment/addressTomTom.js')
    {{-- SCRIPT PER LE CLIENT VALIDATIONS --}}
    @vite('resources/js/appartment/create/clientValidate.js')
@endsection
