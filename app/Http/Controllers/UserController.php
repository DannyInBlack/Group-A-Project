<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreBlogPost;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\User;
// use App\Models\Comment;
use App\Models\Media;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Model;
class userController extends Controller
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

    public function index(){

        $users = User::paginate(10);


        return view('users.index')->with(['users' => $users]);  
    }


    public function show($id){

        $user = User::find($id);
        


        return view('users.show')->with(['user'=> $user]);  
    }
    public function follow($id){

        $follower = User::find(Auth::id());
        $followed= User::find($id);
        $follower->following()->attach($followed);

        return redirect()->route('users.show',['id'=>$id]);
        // return view('users.show')->with(['user'=> $followed]);  
    }
    public function unfollow($id){

        $follower = User::find(Auth::id());
        $followed= User::find($id);
        $follower->following()->detach($followed);

        return redirect()->route('users.show',['id'=>$id]);
        // return view('users.show')->with(['user'=> $followed]);   
    }
    public function search(Request $request){

        $users=User::where('username','like','%'.$request['body'].'%')->get();
        


        return view('users.index')->with(['users'=> $users]);   
    }


    public function followers($id){
        $user = User::find($id);
        $followers = $user->followers;

        return view('users.index')->with(['users'=> $followers]);
    }
    public function following($id){
        $user = User::find($id);
        $following = $user->following;

        return view('users.index')->with(['users'=> $following]);
    }
    public function edit($id){
        if($id==Auth::id()){
            $user = User::find($id);
            return view('users.edit')->with(['user'=> $user]);
                    
                    
        }
        else{
            return redirect()->route('users.show',['id'=>$id]);
        }
        
    }
    public function update(Request $request,$id){

        $user = User::find($id);
        if(null!==$request['avatar']){
            $path=$request['avatar']->store('avatars', 'public');
        }
        else{
            $path=$user['avatar'];
        }
        
        User::where('id',$id)->update([
            'avatar'=>$path,
            'username'=>$request['username'],
            'bio'=>$request['bio'],
            'gender'=>$request['gender']
        ]);

        return redirect()->route('users.show',['id'=>$id]);
    }
}
