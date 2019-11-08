<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrderTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name')->nullable();
            $table->string('firstname')->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->string('source_language')->nullable();
            $table->string('target_language')->nullable();
            $table->string('type')->nullable();
            $table->string('file')->nullable();
            $table->string('domain')->nullable();
            $table->string('deadline')->nullable();
            $table->string('document_type')->nullable();
            $table->longText('message')->nullable();
            $table->string('moyen_contact')->nullable();
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
        Schema::dropIfExists('order_translations');
    }
}
