@extends('layouts.frontend')
@section('title')
    <title>Kcnew - {{ $title->title }}</title>
@endsection
@section('main')
    <!-- Main Breadcrumb Start -->
    <div class="main--breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="route{{ route('home') }}" class="btn-link"><i class="fa fm fa-home"></i>Home</a></li>
                <li class="active"><span>{{ $title->title }}</span></li>
            </ul>
        </div>
    </div>
    <!-- Main Breadcrumb End -->

    <!-- Main Content Section Start -->
    <div class="main-content--section pbottom--30">
        <div class="container">
            <!-- Main Content Start -->
            <div class="main--content">
                <!-- Post Items Start -->
                <div class="post--items post--items-1 pd--30-0">
                    <div class="row gutter--15">
                        <div class="col-md-3">
                            <div class="row gutter--15">
                                @foreach ($newestNews as $tintuc)
                                    <div class="col-md-12 col-xs-6 col-xxs-12">
                                        <!-- Post Item Start -->
                                        <div class="post--item post--layout-1 post--title-large">
                                            <div class="post--img">
                                                <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                    class="thumb"><img src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                        alt="" width="281px" height="193px"></a>
                                                <a href="{{ url('properti/' . $tintuc->tintucProperti->slug) }}"
                                                    class="cat">{{ $tintuc->tintucProperti->title }}</a>
                                                <a href="#" class="icon"><i class="fa fa-flash"></i></a>
                                                <div class="post--info">
                                                    <ul class="nav meta">
                                                        <li><a href="#">{{ $tintuc->tintucUser->title }}</a></li>
                                                        <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                    </ul>
                                                    <div class="title">
                                                        <h2 class="h4"><a
                                                                href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                                class="btn-link">{{ $tintuc->title }}</a></h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Post Item End -->
                                    </div>
                                @endforeach

                            </div>
                        </div>

                        <div class="col-md-6">
                            <!-- Post Item Start -->
                            <div class="post--item post--layout-1 post--title-larger">
                                <div class="post--img">
                                    <a href="{{ route('bai-viet', ['slug' => $mostViewedNews->slug]) }}"
                                        class="thumb"><img src="/uploads/tintuc/{{ $mostViewedNews->hinhanh }}"
                                            alt=""></a>
                                    <a href="{{ url('properti/' . $mostViewedNews->tintucProperti->slug) }}"
                                        class="cat">{{ $mostViewedNews->tintucProperti->title }}</a>
                                    <a href="#" class="icon"><i class="fa fa-star-o"></i></a>

                                    <div class="post--info">
                                        <ul class="nav meta">
                                            <li><a href="#">{{ $mostViewedNews->tintucUser->name }}</a></li>
                                            <li><a href="#">{{ $mostViewedNews->ngayduyet }}</a></li>
                                        </ul>

                                        <div class="title">
                                            <h2 class="h4"><a
                                                    href="{{ route('bai-viet', ['slug' => $mostViewedNews->slug]) }}"
                                                    class="btn-link">{{ $mostViewedNews->title }}</a></h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Post Item End -->
                        </div>

                        <div class="col-md-3">
                            <div class="row gutter--15">
                                @foreach ($oldestNews as $tintuc)
                                    <div class="col-md-12 col-xs-6 col-xxs-12">
                                        <!-- Post Item Start -->
                                        <div class="post--item post--layout-1 post--title-large">
                                            <div class="post--img">
                                                <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                    class="thumb"><img src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                        alt="" width="281px" height="193px"></a>
                                                <a href="{{ url('properti/' . $tintuc->tintucProperti->slug) }}"
                                                    class="cat">{{ $tintuc->tintucProperti->title }}</a>
                                                <a href="#" class="icon"><i class="fa fa-flash"></i></a>
                                                <div class="post--info">
                                                    <ul class="nav meta">
                                                        <li><a href="#">{{ $tintuc->tintucUser->title }}</a></li>
                                                        <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                    </ul>
                                                    <div class="title">
                                                        <h2 class="h4"><a
                                                                href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                                class="btn-link">{{ $tintuc->title }}</a></h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Post Item End -->
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Post Items End -->
            </div>
            <!-- Main Content End -->

            <div class="row">
                <!-- Main Content Start -->
                <div class="main--content col-md-8 col-sm-7" data-sticky-content="true">
                    <div class="sticky-content-inner">
                        <div class="row">
                            <!-- Theatre and Art Start -->
                            <div class="col-md-6 ptop--30 pbottom--30">
                                <!-- Post Items Title Start -->
                                <div class="post--items-title" data-ajax="tab">
                                    <h2 class="h4">{{ $specificPropertyCategory->title }}</h2>
                                </div>
                                <!-- Post Items Title End -->
                                <!-- Post Items Start -->
                                <div class="post--items post--items-2" data-ajax-content="outer">
                                    <ul class="nav" data-ajax-content="inner">
                                        @foreach ($specificPropertyNews1 as $tintuc)
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-1">
                                                    <div class="post--img">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                            class="thumb"><img
                                                                src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                                alt=""></a>
                                                        <a href="{{ url('properti/' . $tintuc->tintucProperti->slug) }}"
                                                            class="cat">{{ $tintuc->tintucProperti->title }}</a>
                                                        <a href="#" class="icon"><i class="fa fa-flash"></i></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="#">{{ $tintuc->tintucUser->name }}</a>
                                                                </li>
                                                                <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                            </ul>

                                                            <div class="title">
                                                                <h3 class="h4"><a href="news-single-v1.html"
                                                                        class="btn-link">{{ $tintuc->title }}</a></h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="post--content">
                                                        <p>{!! $tintuc->tomtat !!}.</p>
                                                    </div>
                                                    <div class="post--action">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}">Tiếp
                                                            tục
                                                            đọc... </a>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                            <li>
                                                <!-- Divider Start -->
                                                <hr class="divider">
                                                <!-- Divider End -->
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <!-- Post Items End -->
                            </div>
                            <!-- Theatre and Art End -->

                            <!-- Festival Start -->
                            <div class="col-md-6 ptop--30 pbottom--30">
                                <!-- Post Items Title Start -->
                                <div class="post--items-title" data-ajax="tab">
                                    <h2 class="h4">{{ $anotherSpecificPropertyCategory->title }}</h2>
                                </div>
                                <!-- Post Items Title End -->

                                <!-- Post Items Start -->
                                <div class="post--items post--items-3" data-ajax-content="outer">
                                    <ul class="nav" data-ajax-content="inner">
                                        @foreach ($relatedSpecificPropertyNews1 as $tintuc)
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-1">
                                                    <div class="post--img">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                            class="thumb"><img
                                                                src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                                alt=""></a>
                                                        <a href="{{ url('properti/' . $tintuc->tintucProperti->slug) }}"
                                                            class="cat">{{ $tintuc->tintucProperti->title }}</a>
                                                        <a href="#" class="icon"><i
                                                                class="fa fa-heart-o"></i></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="#">{{ $tintuc->tintucUser->name }}</a>
                                                                </li>
                                                                <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                            </ul>
                                                            <div class="title">
                                                                <h3 class="h4"><a
                                                                        href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                                        class="btn-link">{{ $tintuc->title }}</a></h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                        @endforeach
                                        @foreach ($relatedSpecificPropertyNews2 as $tintuc)
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-3">
                                                    <div class="post--img">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                            class="thumb"><img
                                                                src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                                alt=""></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="#">{{ $tintuc->tintucUser->name }}</a>
                                                                </li>
                                                                <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                            </ul>
                                                            <div class="title">
                                                                <h3 class="h4"><a
                                                                        href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                                        class="btn-link">{{ $tintuc->title }}</a></h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                        @endforeach

                                    </ul>
                                </div>
                                <!-- Post Items End -->
                            </div>
                            <!-- Festival End -->

                            <!-- Ad Start -->
                            <div class="col-md-12 ptop--30 pbottom--30">
                                <!-- Advertisement Start -->
                                <div class="ad--space">
                                    <a
                                        href="https://masterisehomes.com/the-rivus/?utm_source=adtima&utm_medium=impression&utm_campaign=rivus-adtima-impression-phase1-na-cpd-8B115F30-mastheadtoppc">
                                        <img src="{{ url('/frontend') }}/img/ads-img/728X90_banner2.png" alt=""
                                            class="center-block">
                                    </a>
                                </div>
                                <!-- Advertisement End -->
                            </div>
                            <!-- Ad End -->

                            <!-- Celebrity Life and Style Start -->
                            <div class="col-md-12 ptop--30 pbottom--30">
                                <!-- Post Items Title Start -->
                                <div class="post--items-title" data-ajax="tab">
                                    <h2 class="h4">{{ $specificNews1->tintucProperti->title }}</h2>
                                </div>
                                <!-- Post Items Title End -->

                                <!-- Post Items Start -->
                                <div class="post--items post--items-2" data-ajax-content="outer">
                                    <ul class="nav row" data-ajax-content="inner">
                                        <li class="col-md-12">
                                            <!-- Post Item Start -->
                                            <div class="post--item">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="post--img">
                                                            <a href="{{ route('bai-viet', ['slug' => $specificNews1->slug]) }}"
                                                                class="thumb"><img
                                                                    src="/uploads/tintuc/{{ $specificNews1->hinhanh }}"
                                                                    alt=""></a>
                                                            <a href="{{ url('properti/' . $specificNews1->tintucProperti->slug) }}"
                                                                class="cat">{{ $specificNews1->tintucProperti->title }}</a>
                                                            <a href="#" class="icon"><i
                                                                    class="fa fa-star-o"></i></a>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a
                                                                        href="#">{{ $specificNews1->tintucUser->name }}</a>
                                                                </li>
                                                                <li><a href="#">{{ $specificNews1->ngayduyet }}</a>
                                                                </li>
                                                            </ul>

                                                            <div class="title">
                                                                <h3 class="h4"><a
                                                                        href="{{ route('bai-viet', ['slug' => $specificNews1->slug]) }}"
                                                                        class="btn-link">{{ $specificNews1->title }}.</a>
                                                                </h3>
                                                            </div>
                                                        </div>

                                                        <div class="post--content">
                                                            <p>{!! $specificNews1->tomtat !!}.</p>
                                                        </div>

                                                        <div class="post--action">
                                                            <a href="news-single-v1.html">Chi tiết...</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                        <li class="col-md-12">
                                            <!-- Divider Start -->
                                            <hr class="divider">
                                            <!-- Divider End -->
                                        </li>
                                        @foreach ($specificNews2 as $tintuc)
                                            <li class="col-md-6">
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-4">
                                                    <div class="post--img">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                            class="thumb"><img
                                                                src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                                alt=""></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="#">{{ $tintuc->tintucUser->name }}</a>
                                                                </li>
                                                                <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                            </ul>
                                                            <div class="title">
                                                                <h3 class="h4"><a
                                                                        href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                                        class="btn-link">{{ $tintuc->title }}</a></h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <!-- Post Items End -->
                            </div>
                            <!-- Celebrity Life and Style End -->

                            <!-- Movies Start -->
                            <div class="col-md-6 ptop--30 pbottom--30">
                                <!-- Post Items Title Start -->
                                <div class="post--items-title" data-ajax="tab">
                                    <h2 class="h4">{{ $specificNews3->tintucProperti->title }}</h2>
                                </div>
                                <!-- Post Items Title End -->

                                <!-- Post Items Start -->
                                <div class="post--items post--items-2" data-ajax-content="outer">
                                    <ul class="nav" data-ajax-content="inner">
                                        @foreach ($specificNews4 as $tintuc)
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-1">
                                                    <div class="post--img">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                            class="thumb"><img
                                                                src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                                alt=""></a>
                                                        <a href="{{ url('properti/' . $tintuc->tintucProperti->slug) }}"
                                                            class="cat">{{ $tintuc->tintucProperti->title }}</a>
                                                        <a href="#" class="icon"><i class="fa fa-flash"></i></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="#">{{ $tintuc->tintucUser->name }}</a>
                                                                </li>
                                                                <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                            </ul>
                                                            <div class="title">
                                                                <h3 class="h4"><a href="news-single-v1.html"
                                                                        class="btn-link">{{ $tintuc->title }}</a></h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="post--content">
                                                        <p>{!! $tintuc->tomtat !!}.</p>
                                                    </div>
                                                    <div class="post--action">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}">Continue
                                                            Reading... </a>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                            <li>
                                                <!-- Divider Start -->
                                                <hr class="divider">
                                                <!-- Divider End -->
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <!-- Post Items End -->
                            </div>
                            <!-- Movies End -->

                            <!-- Music Start -->
                            <div class="col-md-6 ptop--30 pbottom--30">
                                <!-- Post Items Title Start -->
                                <div class="post--items-title" data-ajax="tab">
                                    <h2 class="h4">{{ $specificNews5->tintucProperti->title }}</h2>
                                </div>
                                <!-- Post Items Title End -->

                                <!-- Post Items Start -->
                                <div class="post--items post--items-2" data-ajax-content="outer">
                                    <ul class="nav" data-ajax-content="inner">
                                        @foreach ($specificNews6 as $tintuc)
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-1">
                                                    <div class="post--img">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                            class="thumb"><img
                                                                src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                                alt=""></a>
                                                        <a href="{{ url('properti/' . $tintuc->tintucProperti->slug) }}"
                                                            class="cat">{{ $tintuc->tintucProperti->title }}</a>
                                                        <a href="#" class="icon"><i class="fa fa-flash"></i></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="#">{{ $tintuc->tintucUser->name }}</a>
                                                                </li>
                                                                <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                            </ul>
                                                            <div class="title">
                                                                <h3 class="h4"><a href="news-single-v1.html"
                                                                        class="btn-link">{{ $tintuc->title }}</a></h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="post--content">
                                                        <p>{!! $tintuc->tomtat !!}.</p>
                                                    </div>
                                                    <div class="post--action">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}">Continue
                                                            Reading... </a>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                            <li>
                                                <!-- Divider Start -->
                                                <hr class="divider">
                                                <!-- Divider End -->
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <!-- Post Items End -->
                            </div>
                            <!-- Music End -->
                        </div>
                    </div>
                </div>
                <!-- Main Content End -->

                <!-- Main Sidebar Start -->
                @include('frontend.manager.mainsidebar')
                <!-- Main Sidebar End -->
            </div>

            <!-- Main Content Start -->
            <div class="main--content pd--30-0">
                <!-- Post Items Title Start -->
                <div class="post--items-title" data-ajax="tab">
                    <h2 class="h4">Audio &amp; Videos</h2>
                </div>
                <!-- Post Items Title End -->

                <!-- Post Items Start -->
                <div class="post--items post--items-4" data-ajax-content="outer">
                    <ul class="nav row" data-ajax-content="inner">
                        @foreach ($videoNews1 as $videoNews1)
                            <li class="col-md-8">
                                <!-- Post Item Start -->
                                <div class="post--item post--layout-1 post--type-video post--title-large">
                                    <div class="post--img">
                                        <a href="{{ $videoNews1->video }}" class="thumb"><img
                                                src="/uploads/tintuc/{{ $videoNews1->hinhanh }}" alt=""></a>
                                        <a href="{{ url('properti/' . $videoNews1->tintucProperti->slug) }}"
                                            class="cat">{{ $videoNews1->tintucProperti->title }}</a>
                                        <a href="#" class="icon"><i class="fa fa-eye"></i></a>
                                        <div class="post--info">
                                            <ul class="nav meta">
                                                <li><a href="#">{{ $videoNews1->tintucUser->name }}</a></li>
                                                <li><a href="#">{{ $videoNews1->ngayduyet }}</a></li>
                                            </ul>
                                            <div class="title">
                                                <h2 class="h4"><a
                                                        href="{{ route('bai-viet', ['slug' => $videoNews1->slug]) }}"
                                                        class="btn-link">{{ $videoNews1->title }}</a></h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Post Item End -->

                                <!-- Divider Start -->
                                <hr class="divider hidden-md hidden-lg">
                                <!-- Divider End -->
                            </li>
                        @endforeach
                        <li class="col-md-4">
                            <ul class="nav">
                                @foreach ($videoNews2 as $tintuc)
                                    <li>
                                        <!-- Post Item Start -->
                                        <div class="post--item post--type-audio post--layout-3">
                                            <div class="post--img">
                                                <a href="{{ $tintuc->video }}" class="thumb"><img
                                                        src="/uploads/tintuc/{{ $tintuc->hinhanh }}" alt=""></a>
                                                <div class="post--info">
                                                    <ul class="nav meta">
                                                        <li><a href="#">{{ $tintuc->tintucUser->name }}</a></li>
                                                        <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                    </ul>
                                                    <div class="title">
                                                        <h3 class="h4"><a
                                                                href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                                class="btn-link">Long established fact that a reader will
                                                                be distracted by the readable</a></h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                </div>
            </div>
            <!-- Post Item End -->
            </li>
            @endforeach
            </ul>
            </li>
            </ul>
        </div>
        <!-- Post Items End -->
    </div>
    <!-- Main Content End -->

    <!-- Advertisement Start -->
    <div class="ad--space pd--30-0">
        <a href="https://burine.vn/">
            <img src="{{ url('/frontend') }}/img/ads-img/970x90_banner_burine.png" alt="" class="center-block">
        </a>
    </div>
    <!-- Advertisement End -->

    <div class="row">
        <!-- Main Content Start -->
        <div class="main--content col-md-8 col-sm-7" data-sticky-content="true">
            <div class="sticky-content-inner">
                <div class="row">
                    <!-- Awards Start -->
                    <div class="col-md-12 ptop--30 pbottom--30">
                        <!-- Post Items Title Start -->
                        <div class="post--items-title" data-ajax="tab">
                            <h2 class="h4">{{ $afterVideoNews1->tintucProperti->title }}</h2>
                        </div>
                        <!-- Post Items Title End -->

                        <!-- Post Items Start -->
                        <div class="post--items" data-ajax-content="outer">
                            <ul class="nav row gutter--15" data-ajax-content="inner">
                                @foreach ($afterVideoNews2 as $tintuc)
                                    <li class="col-md-4 col-xs-6 col-xxs-12">
                                        <!-- Post Item Start -->
                                        <div class="post--item post--layout-1">
                                            <div class="post--img">
                                                <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                    class="thumb"><img src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                        alt=""></a>
                                                <div class="post--info">
                                                    <ul class="nav meta">
                                                        <li><a href="#">{{ $tintuc->tintucUser->name }}</a>
                                                        </li>
                                                        <li><a href="#">{{ $tintuc->ngayduyet }}</a></li>
                                                    </ul>
                                                    <div class="title">
                                                        <h3 class="h4"><a
                                                                href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                                class="btn-link">{{ $tintuc->title }}</a></h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Post Item End -->
                                    </li>
                                @endforeach
                            </ul>
                            <!-- Preloader Start -->
                            <div class="preloader bg--color-0--b" data-preloader="1">
                                <div class="preloader--inner"></div>
                            </div>
                            <!-- Preloader End -->
                        </div>
                        <!-- Post Items End -->
                    </div>
                    <!-- Awards End -->
                    <!-- Books and Magazine Start -->
                    <div class="col-md-12 ptop--30 pbottom--30">
                        <!-- Post Items Title Start -->
                        <div class="post--items-title" data-ajax="tab">
                            <h2 class="h4">{{ $footerNews1->tintucProperti->title }}</h2>
                        </div>
                        <!-- Post Items Title End -->

                        <!-- Post Items Start -->
                        <div class="post--items post--items-2" data-ajax-content="outer">
                            <ul class="nav" data-ajax-content="inner">
                                @foreach ($footerNews2 as $tintuc)
                                    <li>
                                        <!-- Post Item Start -->
                                        <div class="post--item">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="post--img">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                            class="thumb"><img
                                                                src="/uploads/tintuc/{{ $tintuc->hinhanh }}"
                                                                alt=""></a>
                                                        <a href="{{ url('properti/' . $tintuc->tintucProperti->slug) }}"
                                                            class="cat">{{ $tintuc->tintucProperti->title }}</a>
                                                        <a href="#" class="icon"><i class="fa fa-star-o"></i></a>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="post--info">
                                                        <ul class="nav meta">
                                                            <li><a href="#">{{ $tintuc->tintucUser->name }}</a>
                                                            </li>
                                                            <li><a href="#">{{ $tintuc->ngayduyet }}</a>
                                                            </li>
                                                        </ul>
                                                        <div class="title">
                                                            <h3 class="h4"><a
                                                                    href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}"
                                                                    class="btn-link">{{ $tintuc->title }}.</a>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <div class="post--content">
                                                        <p>{{ $tintuc->tomtat }}.</p>
                                                    </div>
                                                    <div class="post--action">
                                                        <a href="{{ route('bai-viet', ['slug' => $tintuc->slug]) }}">Chi
                                                            tiết.</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Post Item End -->
                                    </li>
                                    <li>
                                        <!-- Divider Start -->
                                        <hr class="divider">
                                        <!-- Divider End -->
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                        <!-- Post Items End -->
                    </div>
                    <!-- Books and Magazine End -->
                    <!-- Photo Gallery Start -->
                </div>
            </div>
        </div>
        <!-- Main Content End -->

        <!-- Main Sidebar Start -->
        @include('frontend.manager.binhchon')
        <!-- Main Sidebar End -->
    </div>
    </div>
    </div>
    <!-- Main Content Section End -->
@endsection
