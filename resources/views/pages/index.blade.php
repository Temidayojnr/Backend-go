@extends('layouts.app')

@section('content')
    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">{{$title}}</h1>
            <p class="lead text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum, ipsam ad? Amet debitis harum repudiandae culpa, perspiciatis, veniam animi sint iure suscipit ex, ratione eum quas corrupti soluta dignissimos illo quis ullam iste voluptas temporibus aliquam! Blanditiis tempora cumque vitae accusantium magni itaque est, veniam culpa. Accusantium, minima temporibus! Voluptate.</p>
            <p>
                <a href="#" class="btn btn-primary my-2">Main call to action</a>
                <a href="#" class="btn btn-secondary my-2">Secondary action</a>
            </p>
        </div>
    </section>

    <br>
        <h1><strong>Recent Posts</strong></h1>
    <br>
    @if(count($posts) > 0)
        <div class="row">
                @foreach($posts as $post)
                <div class="col-md-4" style="margin-bottom:40px;">
                    <div class="card-content">
                        <div class="card-img">
                            <img style="height:205px" src="/storage/cover_images/{{$post->cover_image}}" alt="">
                        <!--<span><h4><a href="/posts/{{$post->id}}">{{$post->title}}</a></h4></span>-->
                            <small>Written on {{$post->created_at->toFormattedDateString()}} by {{$post->user->name}} </small>
                        </div>
                        <div class="card-desc">
                            <h3>{{$post->title}}</h3>
                            <p>{{ str_limit($post->body, 50) }}</p>
                                <a href="/posts/{{$post->id}}" class="btn-card">Read more</a>   
                        </div>
                    </div>
                </div>
            @endforeach
        </div>


    @else
        <p>No Post found</p>
    @endif
        

@endsection



