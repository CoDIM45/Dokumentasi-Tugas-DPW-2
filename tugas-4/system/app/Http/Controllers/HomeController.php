<?php

namespace App\Http\Controllers;

use function PHPUnit\Framework\returnSelf;

class HomeController extends Controller
{

    function showCategories()
    {
        return view('categories');
    }

    function showProductPage()
    {
        return view('product-page');
    }

    function showShoppingCart()
    {
        return view('shopping-cart');
    }

    function showCheckOut()
    {
        return view('check-out');
    }

    function showContact()
    {
        return view('contact');
    }

    function showBase()
    {
        return view('admin.base');
    }

    function showDashboard()
    {
        return view('admin.section.dashboard');
    }

    function showCategory()
    {
        return view('admin.section.category');
    }

    function showProduct()
    {
        return view('admin.section.product');
    }

    function showDiscount()
    {
        return view('admin.section.discount');
    }
}
