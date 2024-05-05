<?php

namespace App\Http\Controllers;

use App\Models\Binhluan;
use App\Models\Tintuc;
use Illuminate\Http\Request;

class BinhLuanController extends Controller
{
    //
    public function index()
    {
        $binhluan = Binhluan::orderBy('created_at','DESC')->paginate(10);
        $tintuc = Tintuc::orderBy('created_at','DESC')->get();
        return view('backend.pages.binhluan.index',compact('tintuc'));
    }

    public function show($id)
    {
        $tintuc = Tintuc::find($id);
        $user = Binhluan::all();
        $binhluan = Binhluan::where('id_tintuc',$tintuc->id)->get();
        return view('backend.pages.binhluan.show',compact('tintuc','binhluan','user'));
    }

    public function destroy($id)
    {
        Binhluan::find($id)->delete();
        return redirect()->back()->with('success','Xóa thành công');
    }

    public function trolai($id){
        $binhluan = Binhluan::find($id);
        
        $binhluan->trangthai = 1;
        $binhluan->save();
        return redirect()->back()->with('success','Bình luận đã trở lại bình thường');
    }
}
