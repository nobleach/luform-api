<?php

namespace App\Services\v1;

use App\PilgrimInfo;

/**
 *
 */
class PilgrimInfoService
{
    public function getPilgrims() {
        return PilgrimInfo::all();
    }

    public function getPilgrimInfo($id) {
        return PilgrimInfo::where('id', $id)->first();
    }
}
