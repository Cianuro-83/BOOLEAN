<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>LARAVEL MOVIES</title>

    <!-- Fonts -->
    <link href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    <!-- Styles -->
    @vite('resources/js/app.js')

</head>

<body>
    <h1 class="text-center my-4 text-uppercase text-warning">movie list</h1>
<main class="container my-5">
    @forelse ($movies as $movie)
    <div class="">
        <div class="card text-bg-success mb-3" style="width: 25rem; height: 18rem">
            <div class="card-header text-center text-bg-danger text-uppercase text-info"> <h3>{{ $movie->title }}</h3></div>
            <div class="card-body">
                <p><span class="fw-bolder text-capitalize">original title: </span>{{ $movie->original_title }}</p>
                <p><span class="fw-bolder text-capitalize">nationality: </span>{{ $movie->nationality }}</p>
                <p><span class="fw-bolder text-capitalize">date: </span>{{ $movie->date }}</p>
                <p><span class="fw-bolder text-capitalize">vote: </span>{{ $movie->vote }}</p>
            </div>
          </div>

        </div> 
    </div>
 @empty
            @endforelse
</main>
</body>

</html>