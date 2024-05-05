<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\PropertiCategory;
use App\Models\Tintuc;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class TintucController extends Controller
{
    //
    public function index()
    {
        //
        $user = User::all();
        $writer = Tintuc::where('tacgia', Auth::user()->id)->orderBy('created_at', 'DESC')->paginate(10);

        $tintucAll = Tintuc::all();
        $tintucShort = Tintuc::where('trangthai', 0)->orWhere('trangthai', 3)->orderBy('created_at', 'DESC')->paginate(10);
        $tintucDuyet = Tintuc::orderBy('created_at', 'DESC')->paginate(10);
        $propertiesCategory = PropertiCategory::all();

        foreach ($tintucAll as $tin) {
            foreach ($propertiesCategory as $pro) {
                if ($pro->id == $tin->id_properticategory) {
                    return view('backend.pages.tintuc.index', compact('writer','user', 'tintucShort', 'tintucDuyet'));
                }
            }
        }
        return view('backend.pages.tintuc.index', compact('user', 'tintucShort', 'tintucDuyet'));
    }

    public function create()
    {
        //
        $user = User::all();
        $category = Category::all();
        return view('backend.pages.tintuc.create', compact('user', 'category'));
    }

    public function store(Request $request)
    {
        //
        $data = $request->validate(
            [
                'title' => 'required|unique:tintucs|max:255',
                'tomtat' => 'required',
                'noidung' => 'required',

                'category' => 'required',
                'tag' => 'required',
            ],
            [
                'title.unique' => 'Tên bài viết đã tồn tại',
                'title.required' => 'Chưa nhập tên bài viết',
                'title.max' => 'Tên bài viết quá dài',
                'tomtat.required' => 'Chưa nhập tóm tắt',
                'noidung.required' => 'Chưa nhập nội dung',
                'category.required' => 'Chưa chọn danh mục',
                'tag.required' => 'Chưa chọn tag',

            ]
        );

        $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();


        $tintuc = new Tintuc();
        $tintuc->title = $data['title'];
        $tintuc->tacgia = $request->tacgia;
        $tintuc->slug = $request->slug;
        $tintuc->tag = $data['tag'];
        $tintuc->tomtat = $data['tomtat'];
        $tintuc->id_properticategory = $request->properticategory;
        $tintuc->id_category = $request->category;
        $tintuc->noidung = $data['noidung'];
        $tintuc->ngayguibai = $now;

        $tintuc->video = $request->video;
        $tintuc->trangthai = 0; //Đợi duyệt


        $get_image = $request->file('hinhanh');
        if ($get_image) {
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image . rand(0, 99) . '.' . $get_image->getClientOriginalExtension();
            $get_image->move('uploads/tintuc', $new_image);
            $tintuc->hinhanh = $new_image;

            $tintuc->save();
            if ($request->submit == null)
                return redirect()->route('tintuc.index')->with('success', 'Thêm bài viết thành công');
            else
                return redirect()->back()->with('success', 'Thêm thành công');
        }
    }

    public function show($id)
    {
        $user = User::all();
        $tin = Tintuc::find($id);
        return view('backend.pages.tintuc.show', compact('tin', 'user'));
    }

    public function edit($id)
    {
        $tintuc = Tintuc::find($id);
        $category = Category::orderBy('created_at', 'DESC')->get();
        $properti = PropertiCategory::all();

        return view('backend.pages.tintuc.edit', compact('tintuc', 'category', 'properti'));
    }


    public function update(Request $request, $id)
    {
        $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();


        $tintuc = Tintuc::find($id);
        $tintuc->title = $request->title;
        $tintuc->tacgia = $request->tacgia;
        $tintuc->slug = $request->slug;
        $tintuc->tag = $request->tag;
        $tintuc->tomtat = $request->tomtat;
        $tintuc->id_properticategory = $request->properticategory;
        $tintuc->id_category = $request->category;
        $tintuc->noidung = $request->noidung;
        $tintuc->ngayguibai = $now;
        $tintuc->trangthai = 3;

        $tintuc->video = $request->video;



        $get_image = $request->file('hinhanh');
        if ($get_image) {
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image . rand(0, 99) . '.' . $get_image->getClientOriginalExtension();
            $get_image->move('uploads/tintuc', $new_image);
            $tintuc->hinhanh = $new_image;

            $tintuc->save();

            return redirect()->route('tintuc.index')->with('success', 'Cập nhật bài viết thành công');
        }
        $tintuc->save();

        return redirect()->route('tintuc.index')->with('success', 'Cập nhật bài viết thành công');
    }

    public function destroy($id)
    {
        Tintuc::find($id)->delete();
        return redirect()->back()->with('success', 'Xóa bài viết thành công');
    }

    public function select_delivery(Request $request)
    {
        $data = $request->all();
        if ($data['action']) {
            $output = '';
            if ($data['action'] == "danhmuc") {
                $select_thuoctinh = PropertiCategory::where('id_category', $data['madm'])->orderBy('created_at', 'DESC')->get();
                $output .= '<option>--Chọn thuộc tính danh mục--</option>';
                foreach ($select_thuoctinh as $select) {
                    $output .= '<option value="' . $select->id . '">' . $select->title . '</option>';
                }
            }
            echo $output;
        }
    }

    public function duyet($id)
    {
        $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
        $duyet = 1;
        $tin = Tintuc::where('id', $id)->first();
        $tin->trangthai = $duyet;
        $tin->ngayduyet = $now;
        $tin->save();
        $output = '';
        $output .= '<div class="alert alert-info alert-dismissible">';
        $output .= ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
        $output .= '<h5><i class="icon fas fa-info"></i>Bài viết đã được duyệt</h5>';

        $output .= '</div>';

        return redirect()->route('tintuc.index')->with('success', 'Bài viết đã được duyệt');
    }
    public function tuchoi($id)
    {
        $tin = Tintuc::where('id', $id)->delete();
        return redirect()->route('tintuc.index', compact('tin'))->with('success', 'Bài viết đã được từ chối');
    }

    public function timkiembaiviet(Request $request)
    {
        $key = $request->search;
        $tintuc = $user = User::all();
        $writer = Tintuc::where('tacgia', Auth::user()->id)->where('title', 'like', '%' . $key . '%')->orderBy('created_at', 'DESC')->paginate(10);

        $tintucAll = Tintuc::all();
        $tintucShort = Tintuc::orderBy('created_at', 'DESC')->paginate(10);
        $PropertiCategory = PropertiCategory::all();
        $categories = Category::where('chubien', Auth::user()->id)->get();

        foreach ($tintucAll as $tin) {
            foreach ($PropertiCategory as $pro) {
                if ($pro->id == $tin->id_properticategory) {
                    foreach ($categories as $category) {

                        if ($pro->id_category == $category->id) {
                            $reviewer = Tintuc::where('title', 'like', '%' . $key . '%')->orderBy('created_at', 'DESC')->paginate(10);
                            return view('backend.pages.tintuc.timkiem', compact('reviewer', 'user', 'tintucShort'));
                        }
                    }
                }
            }
        }
        return view('backend.pages.tintuc.timkiem', compact('writer', 'user', 'tintucShort'));
    }

    public function taobaiviet(Request $request)
    {
        $data = $request->all();
        $tintuc = new PropertiCategory();
        $tintuc->title = $data['title'];
        $tintuc->slug = $data['slug'];
        $tintuc->id_category = $data['danhmuc'];
        $tintuc->id_properticategory = $data['thuoctinh'];
        $tintuc->tomtat = $data['tomtat'];
        $tintuc->tag = $data['tag'];
        $tintuc->hinhanh = $data['hinhanh'];
        $tintuc->video = $data['video'];
        $tintuc->noidung = $data['noidung'];
        $tintuc->tacgia = $data['tacgia'];
        $tintuc->trangthai = 0;
        $get_image = $request->file('hinhanh');
        if ($get_image) {
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image . rand(0, 99) . '.' . $get_image->getClientOriginalExtension();
            $get_image->move('uploads/tintuc', $new_image);
            $tintuc->hinhanh = $new_image;

            $tintuc->save();
            if ($request->submit == null)
                return redirect()->route('tintuc.index')->with('success', 'Thêm bài viết thành công');
            else
                return redirect()->back()->with('success', 'Thêm thành công');
        }
        $tintuc->save();

        $output = '';
        $output .= '<div class="alert alert-info alert-dismissible">';
        $output .= ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
        $output .= '<h5><i class="icon fas fa-info"></i>Thêm thành công</h5>';

        $output .= '</div>';

        echo $output;
    }
}
