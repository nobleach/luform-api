<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PastorInfo extends Model
{
    use Uuids;

    /**
    * Indicates if the IDs are auto-incrementing.
    *
    * @var bool
    */
    public $incrementing = false;
}
