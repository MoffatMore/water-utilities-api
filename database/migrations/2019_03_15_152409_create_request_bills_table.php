<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRequestBillsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bill_enquires', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('customer_num', 191);
            $table->string('utility_num', 191);
            $table->boolean('bill_status');
            $table->double('amount', 15, 8);
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
        Schema::dropIfExists('request_bills');
    }
}
