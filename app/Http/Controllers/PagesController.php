<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class PagesController extends Controller
{
    public function index()
    {
        $title = 'Backend Go';
        $posts = Post::Orderby('created_at','desc');
        $posts = Post::take(6)->get();
        return view('pages.index', compact('posts','title'));
    }

    public function about()
    {
        return view('pages.about');
    }

    public function contact()
    {
        return view('pages.contact');
    }

    public function event()
    {
        return view('pages.event');
    }
}
