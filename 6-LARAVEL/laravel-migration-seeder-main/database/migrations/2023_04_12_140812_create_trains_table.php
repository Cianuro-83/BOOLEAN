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
        Schema::create('trains', function (Blueprint $table) {
            $table->id();
            $table->string("company", 100);
            $table->string("departure_from", 100);
            $table->string("arrive_to", 100);
            $table->dateTime("departure_time");
            $table->dateTime("arrive_time");
            $table->string("train_code", 10);
            $table->tinyInteger('number_of_carriage')->unsigned();
            $table->boolean('delayed')->nullable()->default(false);
            $table->boolean('soppressed')->nullable()->default(false);
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
        Schema::dropIfExists('trains');
    }
};