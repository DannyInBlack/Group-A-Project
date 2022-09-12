<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreBlogPost;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function index(){

        $posts = Post::paginate(10);



        return view('posts.index')->with(['posts' => $posts]);  
    }

    public function deleted(){

        $posts = Post::onlyTrashed()->paginate(10);

        return view('posts.deleted')->with(['posts' => $posts]);
    }
    public function create(){
        
        return view('posts.create');  
    }

    public function store(StoreBlogPost $request){

        $validatedData = $request->validated();

        $path=Null;
        if(isset($validatedData['img'])     ){
            $path = $validatedData['img']->store('postImages', 'public');
        }

        $id = Auth::id();


        Post::create([  
            'title' => $validatedData['title'], 
            'body' => $validatedData['body'],
            'img' => $path,
            'user_id' => $id,
        ]);

        return redirect()->route('posts.index');
    }

    public function show($id){

        $post = Post::find($id);

        return view('posts.view')->with(['post'=> $post]);  
    }

    public function edit($id){

        $post = Post::find($id);

        if(Auth::id() != $post->user['id']){
            return redirect()->route('posts.index');
        }

        return view('posts.edit')->with(['post'=> $post]);  
    }

    public function update(StoreBlogPost $request, $id){
        
        $validatedData = $request->validated();

        Post::find($id)->update([
            'title' => $validatedData['title'],
            'body' => $validatedData['body']
        ]);

        return redirect()->route('posts.index');           
    }
    
    public function restore($id){
        
        Post::withTrashed()->where('id',$id)->restore();

        return redirect()->route('posts.deleted');
    }

    public function delete($id){

        $post = Post::find($id);

        if(Auth::id() != $post->user['id']){
            return redirect()->route('posts.index');
        }

        Post::where('id', $id)->delete();

        return redirect()->route('posts.index');      
    }
}
