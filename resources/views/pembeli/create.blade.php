@extends('template.main')
@section('content')
<div class="container-fluid">
	<div class="row justify-content-center">
		  <div class="col-lg-6">
                        <div class="card">
                            <div class="card-title">
                                <h4>Tambah Data Pembeli</h4>

                            </div>
                            <div class="card-body">
                                <div class="basic-form">
                                    <form class="form-horizontal" method="POST" action="{{url('/pembeli/store')}}">
                                    	{{csrf_field()}}
                                        <div class="form-group">
                                            <label>Nama</label>
                                            <input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan Nama">
                                        </div>
                                        <div class="form-group">
                                            <label>Alamat</label>
                                            <input type="text" class="form-control" id="alamat" name="alamat" placeholder="Masukkan Alamat">
                                        </div>
                                        <div class="form-group">
                                            <label>No Telepon</label>
                                            <input type="text" class="form-control" id="no_telp" name="no_telp" placeholder="Masukkan No Telepon">
                                        </div>
                                       
                                        <button type="submit" class="btn btn-primary">Simpan</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
	</div>
</div>
@endsection