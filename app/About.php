<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;

class About extends Model
{
    use Translatable;
    use Resizable;
    protected $translatable = ['title', 'description'];
}
