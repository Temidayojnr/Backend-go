@extends('layouts.app')

@section('content')
    <button class="btn btn-secondary"><a href="/posts">Go back</a></button>
    <h1><strong>{{$post->title}}</strong></h1>
    <img style="height:205px width:100%" src="/storage/cover_images/{{$post->cover_image}}" alt="">
    <hr>
    <small>Written on {{$post->created_at->toFormattedDateString()}} by {{$post->user->name}}</small> 
    <hr>
    <div>
        {!!$post->body!!}
    </div>
    <hr>
    @if(!Auth::guest())
        @if(Auth::user()->id ==$post->user_id)
            <a href="/posts/{{$post->id}}/edit" class="btn btn-default">Edit</a>

            {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method'=> 'POST', 'class' => 'pull-right'])!!}
                {{Form::hidden('_method', 'DELETE')}}
                {{Form::submit('Delete', ['class'=> 'btn btn-danger'])}}
            {!!Form::close()!!}
        @endif
    @endif
@endsection