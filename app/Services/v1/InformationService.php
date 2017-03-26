<?php

namespace App\Services\v1;

use App\PilgrimInfo;
use App\SponsorInfo;
use App\PastorInfo;

/**
 *
 */
class InformationService
{
    public function getPilgrims() {
        return PilgrimInfo::all();
    }

    public function getPilgrimInfo($id) {
        return PilgrimInfo::where('id', $id)->first();
    }
}
