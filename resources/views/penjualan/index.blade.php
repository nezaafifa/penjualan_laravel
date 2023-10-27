@extends('template.main')
@section('content')
   <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Data Penjualan</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Data Pengguna</li>
                    </ol>
                </div>
            </div>
<div class="container-fluid">
	<div class="row">
		 <div class="col-lg-12">
                        <div class="card">
                            <div class="card-title">
                                <h4>Data Penjualan</h4>

                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover ">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Id Penjualan</th>
                                                <th>Pembeli</th>
                                                <th>Total</th>
                                                <th>Bayar</th>
                                                <th>Petugas</th>
                                                <th>Tanggal & Waktu Transaksi</th>
                                                <th>Aksi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($query as $data)
                                            <tr>
                                                <th scope="row">{{$loop->iteration}}</th>
                                                <td>{{$data->id_penjualan}}</td>
                                                <td>{{$data->nama}}</td>
                                                <td>Rp. {{$data->total}}</td>
                                                <td>Rp. {{$data->bayar}}</td>
                                                <td>{{$data->level}}</td>
                                                <td>{{$data->created_at}}</td>
                                                <td>
                                                	<a href="{{url('/penjualan/show/'.$data->id_penjualan)}}" class="btn btn-info btn-sm"><i class="fa fa-eye"> Detail</i></a>
                                                </td>
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