<?php

namespace App\Http\Controllers\Auth;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;

class ForgotPasswordController extends Controller
{
    //

    public function showForgotPassword() {
        return view('auth.forgotPassword');
    }
    public function forgotPassword(Request $request)
    {
        $user = User::where('name', $request->name)->first();
        $email = User::where('email', $request->email)->first();

        if (!$user) {
            return redirect()->back()->with('error', 'Tên người dùng không tồn tại');
        }

        $token = md5(rand(1, 10) . microtime());
        $user->remember_token = $token;
        $user->save();

        $mail = new PHPMailer(true);
        try {
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'nguyenv759@gmail.com'; // Email của bạn
            $mail->Password = 'zavhxklnqdqsoanz'; // Mật khẩu của bạn
            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;

            $mail->setFrom('nguyenv759@gmail.com', 'ADMIN KCNEWS'); // Email và tên của bạn
            $mail->addAddress($email->email, $user->name);
            $mail->isHTML(true);
            $mail->Subject = 'Reset your password';
            $mail->Body = 'Please click the following link to reset your password: <a href="' . route('reset-password', ['token' => $token]) . '">Reset Password</a>';

            $mail->send();
            return redirect()->back()->with('message', 'Link đặt lại mật khẩu đã được gửi đến email của bạn');
        } catch (Exception $e) {
            return redirect()->back()->with('error', 'Có lỗi xảy ra. Vui lòng thử lại sau');
        }
    }
}
