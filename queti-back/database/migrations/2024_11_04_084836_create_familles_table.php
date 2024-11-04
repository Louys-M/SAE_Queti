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
        Schema::create('familles', function (Blueprint $table) {
            $table->id();
            $table->string('nom_ordre');
            $table->string('photo');
            $table->string('description_1');
            $table->string('description_2');
            $table->unsignedBigInteger('ordre_id');
            $table->unsignedBigInteger('tpa_id'); // Clé étrangère
            $table->unsignedBigInteger('tpp_id');
            $table->unsignedBigInteger('npa_id');
            $table->unsignedBigInteger('ta_id');
            $table->unsignedBigInteger('taa_id');
            $table->unsignedBigInteger('tar_id');
            $table->unsignedBigInteger('nc_id');
            $table->unsignedBigInteger('tc_id');
            $table->unsignedBigInteger('fc_id');
            $table->unsignedBigInteger('thab_id');
            $table->timestamps();

            $table->foreign('ordre_id')->references('id')->on('ordres')->onDelete('cascade');
            $table->foreign('tpa_id')->references('id')->on('type_pattes_antes')->onDelete('cascade');
            $table->foreign('tpp_id')->references('id')->on('type_pattes_posts')->onDelete('cascade');
            $table->foreign('npa_id')->references('id')->on('nbr_paire_ailes')->onDelete('cascade');
            $table->foreign('ta_id')->references('id')->on('type_ailes')->onDelete('cascade');
            $table->foreign('taa_id')->references('id')->on('type_ailes_antes')->onDelete('cascade');
            $table->foreign('tar_id')->references('id')->on('type_ailes_repos')->onDelete('cascade');
            $table->foreign('nc_id')->references('id')->on('nbr_cerques')->onDelete('cascade');
            $table->foreign('tc_id')->references('id')->on('type_cerques')->onDelete('cascade');
            $table->foreign('fc_id')->references('id')->on('forme_corps')->onDelete('cascade');
            $table->foreign('thab_id')->references('id')->on('thorax_abdomens')->onDelete('cascade');


        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('familles');
    }
};
