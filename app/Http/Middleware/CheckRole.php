<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class CheckRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next, $role): Response
    {
        if (!Auth::check()) {
            return redirect()->route('login');
        }

        if ($request->user()->role != $role) {
            // Nếu người dùng không có quyền truy cập, bạn có thể thực hiện xử lý tùy chọn ở đây, ví dụ: chuyển hướng hoặc trả về lỗi
            abort(403, 'Unauthorized action.');
        }

        return $next($request);
    }
}
