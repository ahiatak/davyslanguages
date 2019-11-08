<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderTranslation extends Model
{
    protected $fillable = [
    	'name',
    	'firstname',
    	'email',
    	'phone',
    	'source_language',
    	'target_language',
    	'type',
    	'file',
    	'domain',
    	'deadline',
    	'document_type',
    	'message',
    	'moyen_contact',
    ];
}
