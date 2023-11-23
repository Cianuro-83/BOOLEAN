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
        Schema::create('appartment_sponsorship', function (Blueprint $table) {
            $table->unsignedBigInteger('appartment_id');
            $table->unsignedBigInteger('sponsorship_id');

            $table->foreign('appartment_id')->references('id')->on('appartments')->onDelete('CASCADE')->onUpdate('CASCADE');;
            $table->foreign('sponsorship_id')->references('id')->on('sponsorships')->onDelete('CASCADE')->onUpdate('CASCADE');;

            $table->dateTime('start_date')->nullable(); // required
            $table->dateTime('end_date')->nullable(); // required
            $table->boolean('success')->nullable(); // required

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
        Schema::dropIfExists('appartment_sponsorship');
    }
};