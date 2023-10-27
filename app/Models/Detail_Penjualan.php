<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Detail_Penjualan extends Model
{
    use HasFactory;
    protected $table='detail_penjualan';
    protected $primaryKey='id_detail_pinjam';
    public $timestamps = false;
    protected $fillable=array('id_penjualan','id_barang','jumlah_beli','sub_total');

    public function penjualan(){
        return $this->belongsTo('App\Models\Penjualan','id_penjualan');
    } 
    public function barang(){
        return $this->belongsTo('App\Models\Barang','id_barang');
    }
}
