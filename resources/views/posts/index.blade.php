@extends('layouts.app')

@section('content')
    <br>
        <h1><strong>Latest Posts</strong></h1>
    <br>
    @if(count($posts) > 0)
        @foreach($posts as $post)
        <div class="col-md-4" style="float:left; margin-bottom:40px;">
            <div class="card-content">
                <div class="card-img">
                    <img style="height:205px" src="/storage/cover_images/{{$post->cover_image}}" alt="">
                <!--<span><h4><a href="/posts/{{$post->id}}">{{$post->title}}</a></h4></span>-->
                    <small>Written on {{$post->created_at->toFormattedDateString()}} by {{$post->user->name}} </small>
                </div>
                <div class="card-desc">
                    <h3>{{$post->title}}</h3>
                    <p>{{ str_limit($post->body, 20) }}</p>
                        <a href="/posts/{{$post->id}}" class="btn-card">Read more</a>   
                </div>
            </div>
        </div>
        @endforeach


        <div class="clearfix"></div>
        <div class="container">
            <div class="row justify-content-center">
                {{$posts->links()}}
            </div>
        </div>
    @else
        <p>No Post found</p>
    @endif
@endsection