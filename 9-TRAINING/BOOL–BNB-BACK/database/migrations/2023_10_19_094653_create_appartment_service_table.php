<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('appartment_service', function (Blueprint $table) {
            $table->unsignedBigInteger('appartment_id');
            $table->unsignedBigInteger('service_id');

            $table->foreign('appartment_id')->references('id')->on('appartments')->onDelete('CASCADE')->onUpdate('CASCADE');;
            $table->foreign('service_id')->references('id')->on('services')->onDelete('CASCADE')->onUpdate('CASCADE');;

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
        Schema::dropIfExists('appartment_service');
    }
};