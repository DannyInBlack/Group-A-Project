<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
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



        return view('users.show')->with([
            'user'=> $user,
        ]);  
    }

}
