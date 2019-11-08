<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Price extends Model
{
	use Translatable;
	protected $translatable = ['title', 'description'];
	
    public function p_items(){

        return $this->belongsToMany('App\PItem');
    }
}
