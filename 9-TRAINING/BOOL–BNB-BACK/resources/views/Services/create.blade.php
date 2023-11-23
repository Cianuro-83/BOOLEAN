@extends('layouts.app')

@section('content')
    <div class="card mx-4">
        <div class="card-header">
            <h1>Crea Nuovo Servizio</h1>
        </div>
        <div class="card-body">
            <form action="{{ route('services.store') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="name" class="form-label">Nome del Servizio</label>
                    <input type="text" class="form-control @error('name') is-invalid @enderror" id="name"
                        name="name" value="{{ old('name') }}" required>

                    @error('name')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                <button type="submit" class="btn btn-primary">Salva</button>
                <a href="{{ url()->previous() }}" class="btn btn-secondary">Torna Indietro</a>
            </form>
        </div>
    </div>
@endsection
