<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdatePilgrimsAptsuite extends Migration
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
            $table->string('aptsuite')->nullable()->change();
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
            $table->string('aptsuite')->change();
        });

        Schema::table('pilgrim_infos', function (Blueprint $table) {
            $table->enum('maritalstatus', ['single', 'married', 'separated', 'divorced', 'widowed']);
        });
    }
}
