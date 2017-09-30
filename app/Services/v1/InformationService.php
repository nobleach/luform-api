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
        $pilgrim->sponsor_id = $req->input('sponsorid');
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
        $pilgrim->specialneeds = json_encode($req->input('specialneeds'));
        $pilgrim->reasontoattend = $req->input('reasontoattend');
        $pilgrim->signed = $req->input('signed');
        $pilgrim->save();

        return $pilgrim;
    }

    public function getPilgrimsForSponsor($sponsor_id) {
        return PilgrimInfo::where('sponsor_id', $sponsor_id);
    }

    public function getSponsors() {
        return SponsorInfo::all()->map(function ($sponsor) {
            return [
                'id' => $sponsor->id,
                'fullname' => $sponsor->fullname
            ];
        });
    }

    public function getSponsorPilgrimPairs() {
        return SponsorInfo::all()->map(function ($sponsor) {
            return [
                'id' => $sponsor->id,
                'fullname' => $sponsor->fullname,
                'pilgrim_info' => $this->getPilgrimsForSponsor($sponsor->id)
            ];
        });
    }

    public function createSponsorInfo($req) {
        $sponsorInfo = new SponsorInfo();
        $sponsorInfo->fullname = $req->input('fullname');
        $sponsorInfo->address = $req->input('address');
        $sponsorInfo->city = $req->input('city');
        $sponsorInfo->state = $req->input('state');
        $sponsorInfo->zip = $req->input('zip');
        $sponsorInfo->email = $req->input('email');
        $sponsorInfo->phone = $req->input('phone');
        $sponsorInfo->bestcalltime = $req->input('bestcalltime');
        $sponsorInfo->applicantfullname = $req->input('applicantfullname');
        $sponsorInfo->baptizedlutheran = $req->input('baptizedlutheran');
        $sponsorInfo->hadcursillospousediscussion = $req->input('hadcursillospousediscussion');
        $sponsorInfo->bothspousesattending = $req->input('bothspousesattending');
        $sponsorInfo->singlespouseexplanation = $req->input('singlespouseexplanation');
        $sponsorInfo->cursilloattitude = $req->input('cursilloattitude');
        $sponsorInfo->plantosupport = $req->input('plantosupport');
        $sponsorInfo->otherapplicantinfo = $req->input('otherapplicantinfo');
        $sponsorInfo->goodcandidatereason = $req->input('goodcandidatereason');
        $sponsorInfo->applicantexpectations = $req->input('applicantexpectations');
        $sponsorInfo->signed = $req->input('signed');
        $sponsorInfo->pilgrim_id = $req->input('pilgrim_id');
        $sponsorInfo.save();

        return $sponsorInfo;
    }

    public function createPastorInfo($req) {
        $pastorInfo = new PastorInfo();
        $pastorInfo->fullname = $req->input('fullname');
        $pastorInfo->churchname = $req->input('churchname');
        $pastorInfo->address = $req->input('address');
        $pastorInfo->city = $req->input('city');
        $pastorInfo->state = $req->input('state');
        $pastorInfo->zip = $req->input('zip');
        $pastorInfo->email = $req->input('email');
        $pastorInfo->phone = $req->input('phone');
        $pastorInfo->goodcandidateexplanation = $req->input('goodcandidateexplanation');
        $pastorInfo->signed = $req->input('signed');
        $pastorInfo->sponsorship_id = $req->input('sponsorship_id');
        $pastornfo->save();

        return $pastorInfo;
    }
}
