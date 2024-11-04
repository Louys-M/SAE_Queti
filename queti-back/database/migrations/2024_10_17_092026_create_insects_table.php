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
        Schema::create('insects', function (Blueprint $table) {
            $table->id();
            $table->string('nom_sc');
            $table->string('nom_fr');
            $table->string('photo');
            $table->string('description');
            $table->unsignedBigInteger('famille_id');
            $table->timestamps();

            $table->foreign('famille_id')->references('id')->on('familles')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('insects');
    }
};
