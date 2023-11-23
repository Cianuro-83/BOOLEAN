@extends('layouts.app')

@section('content')
    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <h2>Elenco Appartamenti</h2>
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Nome</th>
                            <th scope="col">Indirizzo</th>
                            <th scope="col">Metri Quadri</th>
                            <th scope="col" colspan="3" class="text-center">Azioni</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($appartments as $appartment)
                            <tr>
                                <td class="fw-bold">{{ $appartment->name }}
                                </td>
                                <td>{{ $appartment->address }}</td>
                                <td>{{ $appartment->mq }}</td>
                                <td>
                                    <a href="{{ route('appartments.show', $appartment->id) }}" class="btn btn-success"><i
                                            class="fa-solid fa-eye fa-beat-fade"></i></a>
                                </td>
                                <td>
                                    <a href="{{ route('appartments.edit', $appartment->id) }}" class="btn btn-warning"><i
                                            class="fa-solid fa-pen-to-square fa-beat"></i></a>
                                </td>

                                <td>
                                    <form action="{{ route('appartments.destroy', $appartment->id) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger"
                                            onclick="return confirm('Sei sicuro di voler eliminare questo appartamento?')">
                                            <i class="fa-solid fa-trash fa-beat"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
