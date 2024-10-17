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
            $table->unsignedBigInteger('ordre_id');
            $table->timestamps();

            $table->foreign('ordre_id')->references('id')->on('ordres')->onDelete('cascade');
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
