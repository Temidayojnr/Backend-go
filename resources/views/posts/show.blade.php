@extends('layouts.app')

@section('content')
    <button class="btn btn-secondary"><a href="/posts">Go back</a></button>
    <h1><strong>{{$post->title}}</strong></h1> 
    <hr>
    <small>Written on {{$post->created_at}}</small> 
    <br>
    <div>
        {!!$post->body!!}
    </div>
    <hr>
    <a href="/posts/{{$post->id}}/edit" class="btn btn-default">Edit</a>

    {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method'=> 'POST', 'class' => 'pull-right'])!!}
        {{Form::hidden('_method', 'DELETE')}}
        {{Form::submit('Delete', ['class'=> 'btn btn-danger'])}}
    {!!Form::close()!!}
@endsection