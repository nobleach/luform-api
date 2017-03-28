<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSponsorshipIdToPastorInfos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pastor_infos', function (Blueprint $table) {
            $table->text('sponsorship_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pastor_infos', function (Blueprint $table) {
            $table->dropColumn('sponsorship_id');
        });
    }
}
