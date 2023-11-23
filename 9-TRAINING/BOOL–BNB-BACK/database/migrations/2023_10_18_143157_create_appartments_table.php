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

Schema::create('appartments', function (Blueprint $table) {
    $table->id();
    $table->string('name');
    $table->integer('rooms')->nullable();
    $table->integer('beds')->nullable();
    $table->integer('bathrooms')->nullable();
    $table->decimal('mq', 8, 2)->nullable();
    $table->string('address')->nullable();
    $table->decimal('lat', 11, 8)->nullable();
    $table->decimal('lon', 11, 8)->nullable();
    $table->boolean('visible')->nullable();
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
        Schema::dropIfExists('appartments');
    }
};