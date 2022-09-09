<?php

namespace App\Http\Controllers;
use App\Models\Product;

class ProductController extends Controller
{
    function index()
    {
        $data['list_product'] = Product::all();
        return view('product.index', $data);
    }

    function create()
    {
        return view('product.create');
    }

    function store()
    {
        $product = new Product;
        $product->nama = request('nama');
        $product->stok = request('stok');
        $product->harga = request('harga');
        $product->berat = request('berat');
        $product->deskripsi = request('deskripsi');
        $product->save();

        return redirect('product')->with('success', 'Data Berhasil Ditambahkan');
    }

    function show($product)
    {
        $data['product'] = Product::find($product);
        return view('product.show', $data);
    }

    function edit(product $product)
    {
        $data['product'] =  $product;
        return view('product.edit', $data);
    }

    function update(Product $product)
    {
        $product->nama = request('nama');
        $product->harga = request('harga');
        $product->berat = request('berat');
        $product->stok = request('stok');
        $product->deskripsi = request('deskripsi');
        $product->save();

        return redirect('product')->with('success', 'Data Berhasil Diedit');
    }

    function destroy(Product $product)
    {
        $product->delete();

        return redirect('product')->with('danger', 'Data Berhasil Dihapus');

    }
}
