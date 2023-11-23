@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="fs-4 text-secondary my-4">
            Ciao {{ Auth::user()->name }}, benvenuto nel tuo pannello di amministrazione
        </h2>
        {{-- box vista appartamenti --}}
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-header text-uppercase fw-bold text-center bg-dark text-white">
                        {{ __('Lista Appartamenti') }}</div>
                    <div class="card-body text-center">

                        <a href="{{ url('appartments') }}" class="btn btn-primary"><strong class="text-uppercase">Vai alla
                                lista</strong></a>
                    </div>
                </div>
            </div>
            {{-- box crea appartamento --}}
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-header text-uppercase fw-bold text-center bg-dark text-white">
                        {{ __('Crea Appartamento') }}</div>
                    <div class="card-body text-center">
                        <a href="{{ url('appartments/create') }}" class="btn btn-primary"><strong
                                class="text-uppercase">Crea un nuovo appartamento</strong> </a>
                    </div>
                </div>
            </div>
        </div>
        {{-- BOX SERVIZI DEGLI APPARTAMENTI --}}
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-header text-uppercase fw-bold text-center bg-dark text-white">
                        {{ __('Lista servizi') }}</div>
                    <div class="card-body text-center">

                        <a href="{{ url('services') }}" class="btn btn-primary"><strong class="text-uppercase">Vai alla
                                lista</strong></a>
                    </div>
                </div>
            </div>
            {{-- box crea appartamento --}}
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-header text-uppercase fw-bold text-center bg-dark text-white">
                        {{ __('Vedi Messaggi') }}</div>
                    <div class="card-body text-center">
                        <a href="{{ url('messages') }}" class="btn btn-primary"><strong class="text-uppercase">Vedi
                                Messaggi</strong> </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
