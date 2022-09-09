<?php

namespace App\Http\Controllers;
use App\Models\Product;

use function PHPUnit\Framework\returnSelf;

class HomeController extends Controller
{
    function showIndex(){
        $data['list_product'] = Product::all();
        return view('index', $data);
    }

    function showCategories()
    {
        $data['list_product'] = Product::all();
        return view('categories', $data);
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
