<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReportLeakagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('report_leakages', function (Blueprint $table) {
            $table->string('name', 191);
            $table->string('email', 191);
            $table->string('cell', 191);
            $table->string('leakage_location', 191);
            $table->string('location', 191);
            $table->string('physical_address', 191);
            $table->bigIncrements('id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('report_leakages');
    }
}
