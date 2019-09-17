<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddDescriptionAndHighlightsInTheNeighborhoods extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement('ALTER TABLE neighborhoods CHANGE created_at created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP');
        DB::statement('ALTER TABLE neighborhoods ADD description TEXT NULL, ADD highlighted BOOLEAN NULL');
        DB::statement('ALTER TABLE neighborhoods ADD photo VARCHAR(240) NULL');
        DB::statement('ALTER TABLE `neighborhoods` ADD `slug` VARCHAR(240) NOT NULL');
        DB::statement('ALTER TABLE `cities` ADD `slug` VARCHAR(240) NOT NULL');
        DB::statement('ALTER TABLE `neighborhoods` ADD `header` VARCHAR(240) NOT NULL AFTER `slug`');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement('ALTER TABLE `neighborhoods` DROP `description`');
        DB::statement('ALTER TABLE `neighborhoods` DROP `highlighted`');
        DB::statement('ALTER TABLE `neighborhoods` DROP `photo`');
        DB::statement('ALTER TABLE `neighborhoods` DROP `slug`');
        DB::statement('ALTER TABLE `neighborhoods` DROP `header`');
        DB::statement('ALTER TABLE `cities` DROP `slug`');
    }
}
