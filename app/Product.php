<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table='products';
    protected $primaryKey='id';
    protected $fillable = [
    	'name',
        'description',
        'body',
        'image',
    ];
    
    public $timestamps=true;
    protected $guarded=[];
}
