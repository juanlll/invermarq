<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
   protected $table='messages';
    protected $primaryKey='id';
    protected $fillable = [
    	'name',
    	'text',
        'phone',
    	'email',
    ];
    
    public $timestamps=true;
    protected $guarded=[];
}
