<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePItemPriceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('p_item_price', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('p_item_id')->unsigned();
            $table->foreign('p_item_id')->references('id')->on('p_items')->onDelete('cascade');
            $table->bigInteger('price_id')->unsigned();
            $table->foreign('price_id')->references('id')->on('prices')->onDelete('cascade');
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
        Schema::dropIfExists('p_item_price');
    }
}
