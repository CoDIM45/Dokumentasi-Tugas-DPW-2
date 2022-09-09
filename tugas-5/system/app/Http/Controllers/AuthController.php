<?php

namespace App\Http\Controllers;

use Auth;

class AuthController extends Controller
{
    function showLogin()
    {
        return view('login');
    }

    function processLogin()
    {
        if (Auth::attempt(['username' => request('username'), 'password' => request('password')])) {
            return redirect('dashboard')->with('success', 'Login Berhasil');
        } else {
            return back()->with('danger', 'Login Gagal, Silahkan cek username dan password anda');
        }
    }

    function logout()
    {
        Auth::logout();
        return redirect('dashboard');
    }

    function registration()
    {
        return view('register');
    }

    function forgotPassword()
    {
    }
}
