<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    public function index()
    {
        //
        
        $user = User::where('vaitro','!=','0')->orderBy('vaitro','ASC')->with('roles')->paginate(10);
        
        return view('backend.pages.user.index',compact('user'));
    }

    public function create()
    {
        //
        $role = Role::orderBy('id', 'DESC')->get();
        return view('backend.pages.user.create',compact('role'));
    }

    public function store(Request $request)
    {
        //
        $data = $request->validate([
            'name' => 'required|unique:users|max:255',
            'email' => 'required|unique:users',
            'sodienthoai' => 'required|max:10',      
            'role_select' => 'required',      
        ],
        [
            'name.unique' => 'Tên người dùng đã tồn tại',
            'name.required' => 'Chưa nhập tên người dùng',
            'email.required' => 'Chưa nhập email',
            'email.unique' => 'Email đã tồn tại',
            'sodienthoai.required' => 'Chưa nhập số điện thoại',
            'sodienthoai.max' => 'Số điện thoại không hợp lệ',
            'role_select.required' => 'Chưa chọn vai trò cho người dùng',    
        ]);

        $user = new User();
        $user->name = $data['name'];
        $user->email = $data['email'];
        $user->sodienthoai = $data['sodienthoai'];

        $user->password = Hash::make($request->password);
        if($data['role_select'] == 2){
            $user->vaitro = 1; //Người duyệt bài
        }
        elseif($data['role_select'] == 3){
            $user->vaitro = 2; //Người viết bài
        }
        elseif($data['role_select'] == 4){
            $user->vaitro = 3;  //Chủ biên
        }
        elseif($request->role_select == 0){
            return redirect()->back()->with('success','Chưa chọn quyền cho người dùng');
        }
        $user->save();

        $data = $request->role;
        $user->syncRoles($request->role_select);

        if($request->submit == null)
            return redirect()->route('user.index')->with('success','Thêm thành công');
        else
            return redirect()->back()->with('success','Thêm thành công');

    }

    public function edit($id)
    {
        //
        $role = Role::orderBy('id', 'DESC')->get();
        $user = User::where('id', $id)->with('roles')->first();
        return view('backend.pages.user.edit',compact('role','user'));
    }

    public function update(Request $request , $id)
    {
        $data = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|',
            'sodienthoai' => 'required|max:10',      
            'role_select' => 'required',      
        ],
        [
            
            'name.required' => 'Chưa nhập tên người dùng',
            'email.required' => 'Chưa nhập email',
            'sodienthoai.required' => 'Chưa nhập số điện thoại',
            'sodienthoai.max' => 'Số điện thoại không hợp lệ',
            'role_select.required' => 'Chưa chọn vai trò cho người dùng',    
        ]);

        $user = User::find($id);
        $user->name = $data['name'];
        $user->email = $data['email'];
        $user->sodienthoai = $data['sodienthoai'];

        if($request->role_select == 2){
            $user->vaitro = 1;
        }
        elseif($request->role_select == 3){
            $user->vaitro = 2;
        }
        elseif($request->role_select == 4){
            $user->vaitro = 3;
        }
        elseif($request->role_select == 0){
            return redirect()->back()->with('success','Chưa chọn quyền cho người dùng');
        }
    
        $user->save();

        $data = $request->role;
        $user->syncRoles($request->role_select);

        return redirect()->route('user.index')->with('success','Chỉnh sửa thành công');
    }

    public function destroy($id)
    {
        User::find($id)->delete();
        return redirect()->back()->with('success', 'Xóa người dùng thành công');
    }

    public function themvaitro(Request $request){
        $data = $request->all();
        $role = new Role();
        $role->name = $data['role'];
        $role->save();
        return redirect()->back()->with('success','Thêm vai trò thành công');
    }
}
