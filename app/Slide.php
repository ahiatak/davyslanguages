<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;

class Slide extends Model
{
    use Translatable;
    use Resizable;
    protected $translatable = ['texte1', 'texte2', 'texte3', 'description', 'btn_text'];
}
