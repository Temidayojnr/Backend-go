@extends('layouts.app')

@section('content')
        <h3>Contact if you want to write or want to work on an open source project</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum, ipsam ad? Amet debitis harum repudiandae culpa, perspiciatis, veniam animi sint iure suscipit ex, ratione eum quas corrupti soluta dignissimos illo quis ullam iste voluptas temporibus aliquam! Blanditiis tempora cumque vitae accusantium magni itaque est, veniam culpa. Accusantium, minima temporibus! Voluptate.</p>
        <div class="container">
                        <div class="row">
                                    <form role="form" class="col-md-9 go-right">
                                            <center><h2>You can contact me via the form below</h2></center>
                                            <br>
                                            <div class="form-group">
                                            <input id="name" name="name" type="text" class="form-control" required>
                                            <label for="name">Your Name</label>
                                    </div>
                                    <div class="form-group">
                                            <input id="email" name="email" type="email" class="form-control" required>
                                            <label for="email">Email</label>
                                    </div>
                                    <div class="form-group">
                                            <textarea id="message" name="phone" class="form-control" required></textarea>
                                            <label for="message">Message</label>
                                    </div>
                                    <button type="submit" class="btn btn-orimary"><a href="/submit">Submit</a></button>
                                    </form>
                    </div>
@endsection
