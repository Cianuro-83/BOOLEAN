@extends('layouts.app')

@section('content')

<div class="home py-3">
    <div class="container">
        <div class="locandine pt-4">
            @foreach ($comics as $comic)
            <div>
                <img src="{{$comic['thumb']}}" alt="">
                <p>{{$comic ["title"]}}</p>
            </div>
            @endforeach
        </div>
    </div>
    <div class="container text-center">
        <button class="px-3 text-uppercase fw-bold bg-primary text-white">load more</button>
    </div>
</div>

@endsection
@section('page-title',"LARAVEL-COMICS")