<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class barang extends Model
{
    use HasFactory;
    protected $table = 'barang';
    protected $primaryKey = 'id_barang';
    public $timestamps = false;
    protected $fillable = array('nama_barang','harga','stok','tgl_expired','id_jenis');

    public function Jenis(){
        return $this->belongsTo('App\Models\Jenis','id_jenis');
    }
    public function detail_penjualan(){
        return $this->hesMany('App\Models\Detail_Penjualan','id_detail_penjualan');
    }
}
