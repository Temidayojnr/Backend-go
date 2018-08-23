@extends('layouts.app')

@section('content')
<h1><strong>Edit Post</strong></h1> 
    {!! Form::open(['action' => ['PostsController@update', $post->id], 'method' => 'POST','enctype' => 'multipart/form-data']) !!}
        <div class="form-group">
            {{Form::label('title', 'Title')}}
            {{Form::text('title', $post->title, ['class' => 'form-control', 'placeholder' => 'Title'])}}
        </div>
        <div class="form-group">
            {{Form::label('body', 'Body')}}
            {{Form::textarea('body', $post->body, ['id'=> 'article-ckeditor','class' => 'form-control', 'plceholder' => 'Body Text'])}}
        </div>
        <div class="form-group">
            {{Form::file('cover_image')}}
        </div>
        {{Form::hidden('_method', 'PUT')}}
        {{Form::submit('submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection