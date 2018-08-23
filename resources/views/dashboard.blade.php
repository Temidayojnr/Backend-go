@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <a href="/posts/create" class="btn btn-primary">Create Post</a>
                   <h3>Blog Posts</h3>
                   <table class="table table-bordered">
                        <thead>
                          <tr>
                            <th>Title</th>
                            <th>Actions</th>
                            <th></th>
                          </tr>
                        </thead>
                                <tbody>
                                @foreach($posts as $post)
                                    <tr>
                                        <th>{{$post->title}}</th>
                                        <th><a href="/posts/{{$post->id}}/edit" class="btn btn-primary">Edit</a></th>
                                        <th>
                                            {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method'=> 'POST', 'class' => 'pull-right'])!!}
                                                {{Form::hidden('_method', 'DELETE')}}
                                                {{Form::submit('Delete', ['class'=> 'btn btn-danger'])}}
                                            {!!Form::close()!!}
                                        </th>
                                    </tr>
                                @endforeach
                                </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
