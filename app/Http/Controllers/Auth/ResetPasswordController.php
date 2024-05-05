<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ResetPasswordController extends Controller
{
    //
    public function showResetForm($token) {
        return view('auth.resetPassword', ['token' => $token]);
    }

    public function resetPassword (Request $request) {
        $user = User::where('remember_token', $request->token)->first();

        if (!$user) {
            return redirect()->back()->with('error', 'Token không hợp lệ. Vui lòng thử lại');
        }
        
        if ($request->password !== $request->password_confirmation) {
            return redirect()->back()->with('error', 'Mật khẩu và xác nhận mật khẩu không khớp');
        }

        $user->password = Hash::make($request->password);
        $user->remember_token = null;
        $user->save();

        return redirect()->route('login')->with('message', 'Mật khẩu đã được đặt lại thành công. Vui lòng đăng nhập bằng mật khẩu mới');
    }
}
