<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class SItem extends Model
{
	use Translatable;
	protected $translatable = ['title', 'description'];
	
    public function services(){

        return $this->belongsToMany('App\Service');
    }
}
