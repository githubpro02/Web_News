<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Like;
use App\Models\Tintuc;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    //
    public function index(){
        $user = Auth::user();

        // dd($user->vaitro);

        if($user->vaitro == 5)
        {
            return redirect()->route('home');
        }
        else{
            return view('home');
        }
    }

    public function dashboard(){

        $user = User::all();
        $tintuc = Tintuc::all();
        $like = Like::where('like','1')->get();

        $category = Category::where('chubien',Auth::user()->id)->get();
        
        return view('backend.pages.dashboard',compact('user','tintuc','like','category'));
    }
}
