<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penjualan extends Model
{
    use HasFactory;
    protected $table = 'penjualan';
    protected $primaryKey = 'id_penjualan';
    public $timestamps = false;

    public function detail_penjualan(){
        return $this->hesMany('App\Models\Detail_Penjualan','id_detail_penjualan');
    }
    
}
