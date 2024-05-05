<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\PropertiCategory;
use App\Models\User;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    //
    public function index()
    {
        $user = User::all();
        $category = Category::orderBy('created_at', 'DESC')->paginate(10);
        $properti = PropertiCategory::all();
        return view('backend.pages.category.index', compact('user', 'category', 'properti'));
    }

    public function create()
    {
        //
        $user = User::where('vaitro', '1')->get();

        return view('backend.pages.category.create', compact('user'));
    }

    public function store(Request $request)
    {
        $data = $request->validate(
            [
                'title' => 'required|unique:categories',
            ],
            [
                'title.unique' => 'Danh mục đã tồn tại',
                'title.required' => 'Chưa nhập danh mục',
            ]
        );

        $category = new Category();
        $category->title = $data['title'];
        $category->slug = $request->slug;
        $category->save();
        if ($request->submit == null)

            return redirect()->route('danhmuc.index')->with('success', 'Thêm thành công');
        else
            return redirect()->back()->with('success', 'Thêm thành công');
    }

    public function edit($id)
    {
        $category = Category::find($id);

        $user = User::where('vaitro', '1')->get();
        return view('backend.pages.category.edit', compact('category', 'user'));
    }

    public function update(Request $request, $id)
    {
        //
        $category = Category::find($id);
        $category->title = $request->title;
        $category->slug = $request->slug;
        $category->save();
        return redirect()->route('danhmuc.index')->with('success', 'Cập nhật thành công');

    }
    public function destroy($id)
    {
        //
        $check = PropertiCategory::where('id_category', $id)->first();

        if ($check) {
            return redirect()->back()->with('success', 'Không thể xóa, do tồn tại thuộc tính thuộc phần tử này!!!');
        } else {
            Category::find($id)->delete();
            return redirect()->back()->with('success', 'Xóa thành công');
        }

    }
}
