@extends('layouts.app')

@section('content')

    <div class="card">
        <div class="card-header">
            <h1 class="mb-0">Messages</h1>
        </div>
        <div class="card-body">
            @if (count($messages) > 0)
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th></th>
                                <th scope="col">Data</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Appartamento</th>
                                <th>Leggi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($messages as $index => $message)
                                <tr>
                                    <td>{{ $index + 1 }}</td>
                                    <td>{{ $message->created_at ? $message->created_at->format('d/m/Y h:m') : '' }}</td>
                                    <td>{{ $message->name }} {{ $message->lastname }}</td>
                                    <td>{{ $message->appartment->name }}</td>
                                    <td>
                                        <button class="btn btn-primary">
                                            <a href="{{ route('messages.show', ['message' => $message]) }}"
                                                class="text-white">Apri</a>
                                        </button>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <p>No messages found.</p>
            @endif
        </div>
    </div>

@endsection
