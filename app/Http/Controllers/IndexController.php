<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\PropertiCategory;
use App\Models\Tintuc;
use App\Models\User;
use App\Models\Binhluan;
use Carbon\Carbon;
use App\Models\Like;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class IndexController extends Controller
{
    //
    public function index()
    {

        $xahoi = Category::where('slug', 'xa-hoi')->first();
        $thegioi = Category::where('slug', 'the-gioi')->first();
        $congnghe = Category::where('slug', 'cong-nghe')->first();
        $giaoduc = Category::where('slug', 'giao-duc')->first();
        $thethao = Category::where('slug', 'the-thao')->first();
        $congnghe = Category::where('slug', 'cong-nghe')->first();
        $khoahoc = Category::where('slug', 'khoa-hoc')->first();
        $doisong = Category::where('slug', 'doi-song')->first();
        $phapluat = Category::where('slug', 'phap-luat')->first();
        $giaitri = Category::where('slug', 'giai-tri')->first();
        $kinhte = Category::where('slug', 'kinh-te')->first();

        $duyet = 1;
        $thoisu = 1;
        $nghethuat = 5;
        $category = Category::all();
        $properti = PropertiCategory::all();
        $tintuc = Tintuc::all();
        $user = User::all();

        $taoMoiNhat = Tintuc::orderBy('created_at', 'DESC')->where('trangthai', $duyet)->take(2)->get();
        $thoisuMoiNhat = Tintuc::where('id_properticategory', $thoisu)
            ->orderBy('created_at', 'DESC')
            ->where('trangthai', $duyet)->take(1)->get();

        $nghethuatMoiNhat = Tintuc::where('id_properticategory', $nghethuat)
            ->orderBy('created_at', 'DESC')
            ->where('trangthai', $duyet)->take(1)->get();

        // Lấy tin tức thế giới dựa
        $the_gioi = Tintuc::where('id_category', $thegioi->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $the_gioi2 = Tintuc::where('id_category', $thegioi->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(2)->get();
        $the_gioi3 = Tintuc::where('id_category', $thegioi->id)->where('trangthai', $duyet)->orderBy('created_at', 'ASC')->take(2)->get();

        // Lấy tin tức công nghệ
        $cong_nghe = Tintuc::where('id_category', $congnghe->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $cong_nghe2 = Tintuc::where('id_category', $congnghe->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(4)->get();

        // Lấy tin tức giáo dục
        $giao_duc = Tintuc::where('id_category', $giaoduc->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $giao_duc2 = Tintuc::where('id_category', $giaoduc->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(2)->get();
        $giao_duc3 = Tintuc::where('id_category', $giaoduc->id)->where('trangthai', $duyet)->orderBy('created_at', 'ASC')->take(2)->get();

        // Lấy tin tức thể thao
        $the_thao = Tintuc::where('id_category', $thethao->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $the_thao2 = Tintuc::where('id_category', $thethao->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(2)->get();
        $the_thao3 = Tintuc::where('id_category', $thethao->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(2)->get();

        // Lấy tin tức khoa học
        $khoa_hoc = Tintuc::where('id_category', $khoahoc->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $khoa_hoc2 = Tintuc::where('id_category', $khoahoc->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(4)->get();

        // Lấy tin tức pháp luật
        $phap_luat = Tintuc::where('id_category', $phapluat->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $phap_luat2 = Tintuc::where('id_category', $phapluat->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(2)->get();
        $phap_luat3 = Tintuc::where('id_category', $phapluat->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(2)->get();

        // Lấy tin tức đời sống
        $doi_song = Tintuc::where('id_category', $doisong->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $doi_song2 = Tintuc::where('id_category', $doisong->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(4)->get();

        // Lấy tin tức kinh tế
        $kinh_te = Tintuc::where('id_category', $kinhte->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $kinh_te2 = Tintuc::where('id_category', $kinhte->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(3)->get();

        // Lấy tin tức giải trí
        $giai_tri = Tintuc::where('id_category', $giaitri->id)->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(3)->get();

        // Lấy tin tức video
        $video = Tintuc::where('video', '!=', 'null')->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $video2 = Tintuc::where('video', '!=', 'null')->where('trangthai', $duyet)->orderBy('created_at', 'DESC')->take(4)->get();

        return view(
            'index',
            compact(
                'video2',
                'video',
                'kinh_te2',
                'kinh_te',
                'giai_tri',
                'phap_luat3',
                'phap_luat2',
                'phap_luat',
                'doi_song2',
                'doi_song',
                'khoa_hoc2',
                'khoa_hoc',
                'the_thao3',
                'the_thao2',
                'giao_duc3',
                'giao_duc2',
                'the_thao',
                'giao_duc',
                'cong_nghe2',
                'the_gioi3',
                'the_gioi2',
                'cong_nghe',
                'the_gioi',
                'taoMoiNhat',
                'thoisuMoiNhat',
                'nghethuatMoiNhat',
                'category',
                'properti',
                'user'
            )
        );
    }

    public function xemnhieunhat()
    {
        $filter = Tintuc::where('trangthai', '1')->orderBy('luotxem', 'DESC')->paginate(10);
        $title = 'Xem nhiều nhất';
        return view('frontend.pages.loc.loc', compact('filter', 'title'));
    }
    public function tinnong()
    {
        $filter = Tintuc::where('trangthai', '1')->where('id_category', '1')->paginate(10); //tin thế giới
        $title = 'Tin nóng';
        return view('frontend.pages.loc.loc', compact('filter', 'title'));
    }
    public function tintucmoinhat()
    {
        $filter = Tintuc::where('trangthai', '1')->orderBy('created_at', 'DESC')->paginate(10);
        $title = 'Tin mới nhất';
        return view('frontend.pages.loc.loc', compact('filter', 'title'));
    }
    public function properti($pro)
    {
        $propertiesCategory = PropertiCategory::where('slug', $pro)->first();
        $filter = Tintuc::where('trangthai', '1')->where('id_properticategory', $propertiesCategory->id)->paginate(10);

        $title = $propertiesCategory->title;
        return view('frontend.pages.loc.loc', compact('filter', 'title'));
    }
    public function category($category)
    {
        $category = Category::where('slug', $category)->first();
        $filter = Tintuc::where('trangthai', '1')->where('id_category', $category->id)->paginate(10);

        $title = $category->title;
        return view('frontend.pages.loc.loc', compact('filter', 'title'));
    }
    public function tag($tag)
    {

        $filter = Tintuc::where('trangthai', '1')->where('tag', $tag)->paginate(10);

        $title = 'tag';
        return view('frontend.pages.loc.loc', compact('filter', 'title'));
    }
    public function search(Request $request)
    {
        $keyword = $request->search;
        $category = Category::where('title', 'like', '%' . $keyword . '%')->first();
        $propertiesCategory = Category::where('title', 'like', '%' . $keyword . '%')->first();

        $tintuc = Tintuc::where('trangthai', '1')->where('title', 'like', '%' . $keyword . '%')->get();
        $tintucTag = Tintuc::where('trangthai', '1')->where('tag', 'like', '%' . $keyword . '%')->get();

        $title = 'kết quả tìm kiếm';
        $titleTag = 'kết quả tìm kiếm theo';
        $timeSecond = '(0,36 giây) ';
        return view('frontend.pages.loc.search', compact('tintuc', 'tintucTag', 'title', 'timeSecond'));
    }

    public function danhmuc($slug)
    {
        // Lấy thông tin category dựa trên slug
        $category = Category::where('slug', $slug)->first();

        // Thiết lập giá trị biến $duyet
        $duyet = 1;

        // Lấy thông tin title từ category
        $title = Category::where('slug', $slug)->first();

        // Lấy tin tức được xem nhiều nhất trong category
        $mostViewedNews = Tintuc::where('id_category', $category->id)->orderBy('luotxem', 'DESC')->first();

        // Lấy các tin tức mới nhất và cũ nhất trong category
        $newestNews = Tintuc::where('id_category', $category->id)->orderBy('created_at', 'DESC')->where('trangthai', $duyet)->take(2)->get();
        $oldestNews = Tintuc::where('id_category', $category->id)->orderBy('created_at', 'ASC')->where('trangthai', $duyet)->take(2)->get();

        // Lấy thông tin về thuộc tính category
        $propertyCategoriesDesc = PropertiCategory::where('id_category', $category->id)->orderBy('id', 'DESC')->get();

        // Lấy thông tin thuộc tính category cụ thể và các tin tức liên quan
        $specificPropertyCategory = PropertiCategory::where('id_category', $category->id)->first();
        $specificPropertyNews1 = Tintuc::where('id_properticategory', $specificPropertyCategory->id)->where('trangthai', $duyet)->take(2)->get();

        // Lấy thông tin thuộc tính category cụ thể khác và các tin tức liên quan
        $anotherSpecificPropertyCategory = PropertiCategory::where('id_category', $category->id)->orderBy('created_at', 'DESC')->first();
        $relatedSpecificPropertyNews1 = Tintuc::where('id_properticategory', $anotherSpecificPropertyCategory->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $relatedSpecificPropertyNews2 = Tintuc::where('id_properticategory', $anotherSpecificPropertyCategory->id)->where('trangthai', $duyet)->take(4)->get();

        // Lấy thông tin thuộc tính category cụ thể khác
        $anotherSpecificPropertyCategoryAsc = PropertiCategory::where('id_category', $category->id)->orderBy('created_at', 'ASC')->first();

        // Lấy tin tức từ category theo định dạng cụ thể
        $specificNews1 = Tintuc::where('id_category', $category->id)->where('trangthai', $duyet)->orderby('created_at', 'DESC')->first();
        $specificNews2 = Tintuc::where('id_properticategory', $specificNews1->tintucProperti->id)->where('trangthai', $duyet)->orderby('luotxem', 'ASC')->take(4)->get();

        // Lấy tin tức từ category theo thứ tự tạo
        $specificNews3 = Tintuc::where('id_category', $category->id)->where('trangthai', $duyet)->orderby('created_at', 'ASC')->first();
        $specificNews4 = Tintuc::where('id_properticategory', $specificNews3->tintucProperti->id)->where('trangthai', $duyet)->orderby('created_at', 'ASC')->get();

        // Lấy tin tức từ category theo thứ tự lượt xem
        $specificNews5 = Tintuc::where('id_category', $category->id)->where('trangthai', $duyet)->orderby('luotxem', 'DESC')->first();
        $specificNews6 = Tintuc::where('id_properticategory', $specificNews5->tintucProperti->id)->where('trangthai', $duyet)->get();

        // Lấy tin tức video từ category
        $videoNews1 = Tintuc::where('id_category', $category->id)->where('video', '!=', 'null')->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->take(1)->get();
        $videoNews2 = Tintuc::where('id_category', $category->id)->where('video', '!=', 'null')->where('trangthai', $duyet)->orderBy('luotxem', 'ASC')->take(4)->get();

        // Lấy tin tức sau video từ category
        $afterVideoNews1 = Tintuc::where('id_category', $category->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->orderBy('created_at', 'ASC')->first();
        $afterVideoNews2 = Tintuc::where('id_category', $category->id)->where('trangthai', $duyet)->orderBy('luotxem', 'DESC')->orderBy('created_at', 'ASC')->take(3)->get();

        // Lấy thông tin chân trang từ category
        $footerNews1 = Tintuc::where('id_category', $category->id)->where('trangthai', $duyet)->orderBy('luotxem', 'ASC')->orderBy('created_at', 'DESC')->first();
        $footerNews2 = Tintuc::where('id_category', $category->id)->where('trangthai', $duyet)->orderBy('luotxem', 'ASC')->orderBy('created_at', 'DESC')->take(3)->get();

        return view('frontend.pages.danhmuc.index', compact('category', 'title', 'mostViewedNews', 'newestNews', 'oldestNews', 'specificPropertyNews1', 'specificPropertyCategory', 'relatedSpecificPropertyNews1', 'relatedSpecificPropertyNews2', 'anotherSpecificPropertyCategory',  'anotherSpecificPropertyCategoryAsc', 'specificNews1', 'specificNews2', 'specificNews3', 'specificNews4', 'specificNews5', 'specificNews6', 'videoNews1', 'videoNews2', 'afterVideoNews1', 'afterVideoNews2', 'footerNews1', 'footerNews2'));

    }
    public function ero()
    {
        return view('frontend.pages.404');
    }
    public function coming()
    {
        return view('frontend.pages.coming');
    }
    public function about()
    {
        return view('frontend.pages.about');
    }

    public function detail($slug)
    {
        // Lấy tin tức dựa trên slug và tăng giá trị cột 'luotxem' lên 1
        $news = Tintuc::where('slug', $slug)->first();
        $news->increment('luotxem');

        // Lấy tất cả người dùng
        $users = User::all();

        // Kiểm tra sự tồn tại của bình luận
        $firstCommentCheck = Binhluan::where('id_tintuc', $news->id)->first();

        // Lấy xu hướng tin tức (4 tin tức mới nhất)
        $trendingNews = Tintuc::orderBy('created_at', 'ASC')->take(4)->get();

        // Lấy tất cả bình luận của tin tức
        $comments = Binhluan::where('id_tintuc', $news->id)->get();

        // Lấy bình luận cho thanh bên
        $sidebarComments = Binhluan::orderBy('created_at', 'DESC')->take(4)->get();

        // Lấy tin tức liên quan
        $relatedNews = Tintuc::where('id_category', $news->id_category)->take(2)->get();

        // Lấy tin tức theo lượt xem (4 tin tức có lượt xem thấp nhất)
        $viewedNews = Tintuc::orderBy('luotxem', 'ASC')->take(4)->get();

        // Lấy tin tức theo mức độ thích
        $likedNews = Tintuc::where('id_properticategory', $news->id_properticategory)->orderBy('luotxem', 'DESC')->take(2)->get();

        // Kiểm tra xem người dùng đã đăng nhập chưa
        if (Auth::check()) {
            $userLikes = Like::where('id_user', Auth::user()->id)->where('id_tintuc', $news->id)->where('like', '1')->first();
            return view('frontend.pages.detail.index', compact('userLikes', 'viewedNews', 'firstCommentCheck', 'comments', 'likedNews', 'relatedNews', 'slug', 'news', 'users', 'trendingNews', 'sidebarComments'));
        }
        return view('frontend.pages.detail.index', compact('likedNews', 'viewedNews', 'firstCommentCheck', 'comments', 'likedNews', 'relatedNews', 'slug', 'news', 'users', 'trendingNews', 'sidebarComments'));
    }

    
    public function binhluan(Request $request, $tin, $user)
    {
        $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
        $binhluan = new Binhluan();

        $binhluan->noidung = $request->comment;
        $binhluan->id_user = $user;
        $binhluan->id_tintuc = $tin;
        $binhluan->ngaydang = $now;
        $binhluan->save();

        return redirect()->back();
    }

    public function like(Request $request)
    {
        $check = Like::where('id_tintuc', $request->tin)->where('id_user', $request->user)->first();
        if (isset($check)) {
            if ($check->like == 0) {
                $val = Like::where('id_tintuc', $request->tin)->where('id_user', $request->user)->first();
                $val->like = 1;
                $val->id_user = $request->user;
                $val->id_tintuc = $request->tin;
                $val->save();
            } else {
                $val = Like::where('id_tintuc', $request->tin)->where('id_user', $request->user)->first();
                $val->like = 0;
                $val->id_user = $request->user;
                $val->id_tintuc = $request->tin;
                $val->save();
            }
        } else {
            $val = new Like();
            $val->like = 1;
            $val->id_user = $request->user;
            $val->id_tintuc = $request->tin;
            $val->save();
        }
        return redirect()->back();
    }
    public function report($id)
    {
        $binhluan = Binhluan::where('id', $id)->first();
        $binhluan->trangthai = '2';
        $binhluan->save();

        return redirect()->back();
    }
}
