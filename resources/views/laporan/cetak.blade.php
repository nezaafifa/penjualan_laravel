<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Cetak</title>
</head>
<body onload="javascript:window.print()">
	<center>
		<table style="text-align: center;">
			<tr>
				<td><img src=""></td>
				<td style="font-family: sans-serif;text-align: center;">
					<div style="text-align: center;">
						<h2>Laporan Penjualan Per- Bulan</h2>
						<h2>Toko NesaOnclik</h2>
					</div>
					<p style="text-align: center;">Jl. Kelet Ploso KM 36, Kelet, Keling, Jepara, Jawa Tengah 594554</p>
				</td>
				<hr style="text-align: center;">
				<td><img src=""></td>
			</tr>
		</table>
	</center>
	<br>
    <table cellspacing="0" width="100%" border="1">
    	 <tr>
            <th>#</th>
            <th>Id Penjualan</th>
            <th>Pembeli</th>
            <th>Nama Barang</th>
            <th>Jumlah Beli</th>
            <th>Sub Total</th>
            <th>Total</th>
            <th>Bayar</th>
            <th>Tanggal & Waktu Transaksi</th>
            <th>Petugas</th>
         </tr>
           @foreach ($data as $query)
         <tr>
            <th>{{$loop->iteration}}</th>
            <th>{{$query->id_penjualan}}</th>
            <th>{{$query->nama}}</th>
            <th>{{$query->nama_barang}}</th>
            <th>{{$query->jumlah_beli}}</th>
            <th>{{$query->sub_total}}</th>
            <th>{{$query->total}}</th>
            <th>{{$query->bayar}}</th>
            <th>{{$query->created_at}}</th>
            <th>{{$query->username}}</th>
          </tr>
           @endforeach
    </table>
    <table style="text-align: center;">
    	<tr>
    		<td style="font-family: sans-serif;text-align: center;">
    			<div style="text-align: right;float: right;margin-left: 500px;margin-top: 25px;">
    				Jepara, {{date('Y-m-d')}}
    			</div>
    		</td>
    	</tr>
    </table>
    <table style="text-align: center;">
    	<tr>
    		<td style="font-family: sans-serif;text-align: center;">
    			<div style="text-align: center;float: right;margin-left: 520px;margin-top: 40px;">
    				Admin
    			</div>
    		</td>
    	</tr>
    </table>
</body>
</html>