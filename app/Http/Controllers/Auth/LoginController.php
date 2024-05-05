<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{

    public function showLoginForm() {
        return view('auth.login');
    }

    public function processLogin(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::attempt(['email' => $credentials['email'], 'password' => $credentials['password']])) {
            $user = Auth::user();

            if ($user->vaitro !== '5') {
                // Nếu đăng nhập thành công với tư cách là admin
                return redirect()->route('home-admin');
            } elseif ($user->vaitro === '5') {
                // Nếu đăng nhập thành công với tư cách là user
                return redirect()->route('home');
            }
        }

        // Nếu thông tin đăng nhập không chính xác
        return redirect()->back()->withInput()->withErrors(['email' => 'Thông tin đăng nhập không chính xác']);
    }

    public function logout()
    {
        Auth::logout(); // Đăng xuất người dùng
        return redirect()->route('home'); // Chuyển hướng đến trang đăng nhập
    }

}
