<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- ==== Document Title ==== -->
    <title>KCNEWS - Reset Password</title>

    <!-- ==== Document Meta ==== -->
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- ==== Favicons ==== -->
    <link rel="icon" href="favicon.png" type="{{ url('/frontend') }}/image/png">

    <!-- ==== Google Font ==== -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700">

    <!-- ==== Font Awesome ==== -->
    <link rel="stylesheet" href="{{ url('/frontend') }}/css/font-awesome.min.css">

    <!-- ==== Bootstrap Framework ==== -->
    <link rel="stylesheet" href="{{ url('/frontend') }}/css/bootstrap.min.css">

    <!-- ==== Bar Rating Plugin ==== -->
    <link rel="stylesheet" href="{{ url('/frontend') }}/css/fontawesome-stars-o.min.css">

    <!-- ==== Main Stylesheet ==== -->
    <link rel="stylesheet" href="{{ url('/frontend') }}/style.css">

    <!-- ==== Responsive Stylesheet ==== -->
    <link rel="stylesheet" href="{{ url('/frontend') }}/css/responsive-style.css">

    <!-- ==== Theme Color Stylesheet ==== -->
    <link rel="stylesheet" href="{{ url('/frontend') }}/css/colors/theme-color-1.css" id="changeColorScheme">

    <!-- ==== Custom Stylesheet ==== -->
    <link rel="stylesheet" href="{{ url('/frontend') }}/css/custom.css">

</head>

<body>

    <!-- Preloader Start -->
    <div id="preloader">
        <div class="preloader bg--color-1--b" data-preloader="1">
            <div class="preloader--inner"></div>
        </div>
    </div>
    <!-- Preloader End -->

    <!-- Wrapper Start -->
    <div class="wrapper">
        <!-- Login Section Start -->
        <div class="login--section pd--100-0 bg--overlay" data-bg-img="{{ url('/frontend') }}/img/KCN.png">
            <div class="container">
                <!-- Login Form Start -->
                <div class="login--form">
                    <div class="title">
                        <h1 class="h1">Reset Password</h1>
                    </div>

                    <form method="POST" action="{{ route('reset-password', ['token' => $token]) }}">
                        @csrf
                        <div class="form-group">
                            <label>
                                <span>Password</span>
                                <input id="password" type="password"
                                    class="form-control @error('password') is-invalid @enderror" name="password"
                                    required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </label>
                        </div>

                        <div class="form-group">
                            <label>
                                <span>{{ __('Confirm Password') }}</span>
                                <input id="password-confirm" type="password" class="form-control"
                                    name="password_confirmation" required autocomplete="new-password">

                            </label>
                        </div>

                        <button type="submit" class="btn btn-lg btn-block btn-primary">
                            {{ __('Reset Password') }}
                        </button>

                        <hr>

                        @if (session('message'))
                            <div class="alert alert-success">
                                {{ session('message') }}
                            </div>
                        @elseif (session('error'))
                            <div class="alert alert-warning">
                                {{ session('error') }}
                            </div>
                        @endif
                    </form>
                </div>
                <!-- Login Form End -->
            </div>
        </div>
        <!-- Login Section End -->
    </div>
    <!-- Wrapper End -->

    <!-- ==== jQuery Library ==== -->
    <script src="{{ url('/frontend') }}/js/jquery-3.2.1.min.js"></script>

    <!-- ==== Bootstrap Framework ==== -->
    <script src="{{ url('/frontend') }}/js/bootstrap.min.js"></script>

    <!-- ==== StickyJS Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/jquery.sticky.min.js"></script>

    <!-- ==== HoverIntent Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/jquery.hoverIntent.min.js"></script>

    <!-- ==== Marquee Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/jquery.marquee.min.js"></script>

    <!-- ==== Validation Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/jquery.validate.min.js"></script>

    <!-- ==== Isotope Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/isotope.min.js"></script>

    <!-- ==== Resize Sensor Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/resizesensor.min.js"></script>

    <!-- ==== Sticky Sidebar Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/theia-sticky-sidebar.min.js"></script>

    <!-- ==== Zoom Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/jquery.zoom.min.js"></script>

    <!-- ==== Bar Rating Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/jquery.barrating.min.js"></script>

    <!-- ==== Countdown Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/jquery.countdown.min.js"></script>

    <!-- ==== RetinaJS Plugin ==== -->
    <script src="{{ url('/frontend') }}/js/retina.min.js"></script>

    <!-- ==== Google Map API ==== -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBK9f7sXWmqQ1E-ufRXV3VpXOn_ifKsDuc"></script>

    <!-- ==== Main JavaScript ==== -->
    <script src="{{ url('/frontend') }}/js/main.js"></script>

</body>

</html>
