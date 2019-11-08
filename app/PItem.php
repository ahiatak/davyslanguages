<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class PItem extends Model
{
	use Translatable;
	protected $translatable = ['title', 'description'];
	
    public function prices(){

        return $this->belongsToMany('App\Price');
    }
}
