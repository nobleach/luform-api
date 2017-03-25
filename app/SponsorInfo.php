<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SponsorInfo extends Model
{
    use Uuids;

    /**
    * Indicates if the IDs are auto-incrementing.
    *
    * @var bool
    */
    public $incrementing = false;
}
