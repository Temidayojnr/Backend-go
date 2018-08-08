@extends('layouts.app')

@section('content')
    <center><h1><strong>Posts</strong></h1></center>
    @if(count($posts) > 0)
        @foreach($posts as $post)
        <div class="col-md-4" style="float:left; margin-bottom:40px;">
            <div class="card-content">
                <div class="card-img">
                    <img src="https://placeimg.com/380/230/nature" alt="">
                <!--<span><h4><a href="/posts/{{$post->id}}">{{$post->title}}</a></h4></span>-->
                    <small>Written on {{$post->created_at}}</small>
                </div>
                <div class="card-desc">
                    <h3>{{$post->title}}</h3>
                    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam, voluptatum! Dolor quo, perspiciatis
                        voluptas totam</p>
                        <a href="/posts/{{$post->id}}" class="btn-card">Read more</a>   
                </div>
            </div>
        </div>

            {{$posts->links()}}
        @endforeach

    @else
        <p>No Post found</p>
    @endif
@endsection