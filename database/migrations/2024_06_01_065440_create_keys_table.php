<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('key_types', function (Blueprint $table) {
            $table->id();
            $table->string('name_type');
            $table->integer('number_day');
            $table->integer('price');
            $table->timestamps();
        });

        Schema::create('keys', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->integer('number_day');
            $table->date('expired')->nullable();
            $table->text('session_id')->nullable();
            $table->foreignId('key_type_id')->constrained();
            $table->timestamps();
        });


    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('keys');
    }
};
