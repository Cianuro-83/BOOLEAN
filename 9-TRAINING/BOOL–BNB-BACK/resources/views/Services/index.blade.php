@extends('layouts.app')

@section('content')
    <div class="card mx-4 my-3">
        <div class="card-header">
            <h1>Servizi</h1>
        </div>
        <div class="card-body">
            <a href="{{ route('services.create') }}" class="btn btn-primary mb-3">Crea Nuovo Servizio</a>

            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Azioni</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($services as $service)
                            <tr>
                                <td>{{ $service->name }}</td>
                                <td>
                                    <a href="{{ route('services.edit', $service->id) }}" class="btn btn-warning"><i
                                            class="fa-solid fa-pen-to-square fa-beat"></i></a>

                                    <form style="display:inline-block;"
                                        action="{{ route('services.destroy', $service->id) }}" method="POST"
                                        onsubmit="return confirm('Sei sicuro di voler spostare nel cestino questo servizio?')">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger"><i
                                                class="fa-solid fa-trash fa-beat"></i></button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    @if ($deletedServices->isNotEmpty())
        <div class="card mx-4 my-3">
            <div class="card-header">
                <h1>Cestino ({{ $deletedServices->count() }})</h1>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Azioni</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($deletedServices as $deletedService)
                                <tr>
                                    <td>
                                        {{ $deletedService->name }}
                                        <span
                                            class="badge badge-secondary">{{ $deletedService->trashed() ? 'Cestinato' : '' }}</span>
                                    </td>
                                    <td>

                                        <form style="display:inline-block;"
                                            action="{{ route('services.restore', $deletedService->id) }}" method="POST"
                                            onsubmit="return confirm('Sei sicuro di voler ripristinare questo servizio?')">
                                            @csrf
                                            @method('PUT')
                                            <button type="submit" class="btn btn-success"><i
                                                    class="fa-solid fa-recycle fa-spin-pulse"></i></button>
                                        </form>
                                        <form style="display:inline-block;"
                                            action="{{ route('services.forceDelete', $deletedService->id) }}" method="POST"
                                            onsubmit="return confirm('Sei sicuro di voler eliminare definitivamente questo servizio cestinato?')">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger"><i
                                                    class="fa-solid fa-trash fa-beat"></i></button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    @endif
@endsection
