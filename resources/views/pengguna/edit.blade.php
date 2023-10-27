@extends('template.main')
@section('content')
<div class="container-fluid">
 <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-title">
                                <h4>Edit Data Pengguna</h4>

                            </div>
                            <div class="card-body">
                                <div class="basic-form">
 								<form action="{{url('/pengguna/update/'.$pengguna->id_user)}}" method="POST" class="form-horizontal">
        					    {{csrf_field()}}
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="username" class="form-control" id="username" name="username" value="{{$pengguna->username}}">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="text" id="password" name="password" class="form-control" value="{{$pengguna->password}}">
                                        </div>
                                        <div class="form-group">
                                            <label>level</label>
                                            <select class="form-control" id="level" name="level" value="{{$pengguna->level}}">
                                                <option @if ($pengguna->level==$pengguna->level)selected="@endif value="{{$pengguna->level }}">{{$pengguna->level }}</option>
                                            	<option>--pilih--</option>
                                            	<option value="Administrator">Administrator</option>
                                            	<option value="Kasir">Kasir</option>
                                            </select>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Edit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                   
                    <!-- /# column -->
                </div>
</div>
@endsection