<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AllowNulls extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pilgrim_infos', function(Blueprint $table) {
            $table->dropColumn('maritalstatus');
        });

        Schema::table('pilgrim_infos', function (Blueprint $table) {
            $table->string('occupation')->nullable()->change();
            $table->string('marriagepartner')->nullable()->change();
            $table->string('homechurch')->nullable()->change();
            $table->string('homechurchcity')->nullable()->change();
            $table->string('homechurchpastor')->nullable()->change();
            $table->string('homechurchattendance')->nullable()->change();
        });

        Schema::table('pilgrim_infos', function (Blueprint $table) {
            $table->enum('maritalstatus', ['single', 'married', 'separated', 'divorced', 'widowed']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pilgrim_infos', function(Blueprint $table) {
            $table->dropColumn('maritalstatus');
        });

        Schema::table('pilgrim_infos', function (Blueprint $table) {
            $table->string('occupation')->change();
            $table->string('marriagepartner')->change();
            $table->string('homechurch')->change();
            $table->string('homechurchcity')->change();
            $table->string('homechurchpastor')->change();
            $table->string('homechurchattendance')->change();
        });

        Schema::table('pilgrim_infos', function (Blueprint $table) {
            $table->enum('maritalstatus', ['single', 'married', 'separated', 'divorced', 'widowed']);
        });
    }
}
