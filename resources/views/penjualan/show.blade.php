@extends('template.main')
@section('content')
<div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Detail Penjualan</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Detail Pengguna</li>
                    </ol>
                </div>
            </div>
<div class="container-fluid">
	<div class="row justify-content-center">
		 <div class="col-lg-8">
                        <div class="card">
                            <div class="card-title">
                                <h4>Detail Penjualan</h4>

                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover ">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Id Penjualan</th>
                                                <th>Barang</th>
                                                <th>Jumlah Beli</th>
                                                <th>Sub Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($penjualan as $data)
                                            <tr>
                                                <th scope="row">{{$loop->iteration}}</th>
                                                <td>{{$data->id_penjualan}}</td>
                                                <td>{{$data->barang->nama_barang}}</td>
                                                <td>{{$data->jumlah_beli}}</td>
                                                <td>Rp. {{$data->sub_total}}</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
	</div>
</div>
@endsection