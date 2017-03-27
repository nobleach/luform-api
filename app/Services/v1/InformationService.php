<?php

namespace App\Services\v1;

use App\PilgrimInfo;
use App\SponsorInfo;
use App\PastorInfo;
use App\User;

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

    public function createPilgrim($req) {
        $pilgrim = new PilgrimInfo();
        $pilgrim->sponsor_id = $req->input('sponsor_id');
        $pilgrim->firstname = $req->input('firstname');
        $pilgrim->lastname = $req->input('lastname');
        $pilgrim->address = $req->input('address');
        $pilgrim->aptsuite = $req->input('aptsuite');
        $pilgrim->city = $req->input('city');
        $pilgrim->state = $req->input('state');
        $pilgrim->zip = $req->input('zip');
        $pilgrim->phone = $req->input('phone');
        $pilgrim->bestcalltime = $req->input('bestcalltime');
        $pilgrim->email = $req->input('email');
        $pilgrim->over18 = $req->input('over18');
        $pilgrim->occupation = $req->input('occupation');
        $pilgrim->tagname = $req->input('tagname');
        $pilgrim->maritalstatus = $req->input('maritalstatus');
        $pilgrim->marriagepartner = $req->input('marriagepartner');
        $pilgrim->homechurch = $req->input('homechurch');
        $pilgrim->homechurchcity = $req->input('homechurchcity');
        $pilgrim->homechurchpastor = $req->input('homechurchpastor');
        $pilgrim->homechurchattendance = $req->input('homechurchattendance');
        $pilgrim->specialneeds = $req->input('specialneeds');
        $pilgrim->reasontoattend = $req->input('reasontoattend');
        $pilgrim->signed = $req->input('signed');
        $pilgrim->save();

        return $pilgrim;
    }

    public function getSponsors() {
        return SponsorInfo::all();
    }
}
