@extends('admin.base')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-12 mt-4">
                <div class="card">
                    <div class="card-header">
                        Detail Data Produk
                    </div>
                    <div class="card-body">
                        <h4>{{$product->nama}}</h4>
                        <hr>
                        <p>Rp. {{number_format($product->harga)}} |
                            Stok : {{$product->stok}} |
                            Berat : {{$product->berat}} gr
                        </p>
                        <p>
                            {!! nl2br($product->deskripsi) !!}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection