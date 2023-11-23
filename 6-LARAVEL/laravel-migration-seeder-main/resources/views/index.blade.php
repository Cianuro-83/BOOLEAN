<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>laravel-migration-seeder</title>

    <!-- Fonts -->
    <link href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    <!-- Styles -->
    @vite('resources/js/app.js')

</head>

<body>
<main class="container-fluid">
    <h1 class="text-bg-danger text-uppercase text-center fw-bolder text-info py-5">lista treni</h1>
    <div class="container scb-contenitore py-5">

        @forelse ($trains as $train )
        <table class="table table table-light">
            <thead>
                <tr>
                  <th scope="col">COMPAGNIA</th>
                  <th scope="col">PARTENZA</th>
                  <th scope="col">ARRIVO</th>
                  <th scope="col">DATA PARTENZA</th>
                  <th scope="col">DATA ARRIVO</th>
                  <th scope="col">CODICE TRENO</th>
                  <th scope="col">N° CARROZZE</th>
                  <th scope="col">RITARDO</th>
                  <th scope="col">SOPPRESSO</th>
                </tr>
              </thead>
            <tbody>
              <tr class="table table-light">
                <td>{{$train->company}}</td>
                <td>{{$train->departure_from}}</td>
                <td>{{$train->arrive_to}}</td>
                <td>{{$train->departure_time}}</td>
                <td>{{$train->arrive_time}}</td>
                <td>{{$train->train_code}}</td>
                <td>{{$train->number_of_carriage}}</td>
                <td>{{$train->delayed}}</td>
                <td>{{$train->soppressed}}</td>

              </tr>
             
            </tbody>
          </table>
            
        @empty
            
        @endforelse
    </div>
</main>

</body>

</html>