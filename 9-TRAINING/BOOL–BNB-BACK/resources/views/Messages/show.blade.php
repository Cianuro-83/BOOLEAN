@extends('layouts.app')

@section('content')
    @vite('resources/scss/appartmentView.scss')

    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <h1>Messaggio da: <span>{{ $message->name }}</span></h1>
            </div>
            <div class="card-body">
                <p>Messaggio ricevuto il: {{ $message->created_at ? $message->created_at->format('d/m/Y h:m') : '' }}</p>
                <p>Appartamento di riferimento: {{ $message->appartment->name }}</p>
                <p>Email di contatto: {{ $message->email }}</p>

                <label for="text">Testo Messaggio:</label>
                <div class="card mt-3">
                    <div class="card-body">
                        <p class="card-text">{{ $message->text }}</p>
                    </div>
                </div>

                <div class="mt-3">
                    <h2>Rispondi al Messaggio</h2>
                    <form action="{{ route('send-reply', $message->id) }}" method="post">
                        @csrf
                        <textarea name="reply" class="form-control" rows="4" placeholder="Inserisci la tua risposta"></textarea>
                        <button type="submit" class="btn btn-primary mt-2" disabled>Invia Risposta</button>
                    </form>
                </div>
            </div>
            <div class="card-footer">
                <a href="{{ url()->previous() }}" class="btn btn-secondary">Torna Indietro</a>
            </div>
        </div>
    </div>
@endsection
