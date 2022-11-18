<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class BaseStructure extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('states', function (Blueprint $table){
            $table->id();
            $table->string('name');

            $table->softDeletes();
            $table->timestamps();
        });

        Schema::create('phases', function (Blueprint $table){
            $table->id();
            $table->string('name');
            $table->unsignedBigInteger('state_id');

            $table->softDeletes();
            $table->timestamps();

            $table->foreign('state_id')->on('states')->references('id');
        });

        Schema::create('valves', function (Blueprint $table){
            $table->id();
            $table->string('name');
            $table->unsignedBigInteger('phase_id');

            $table->softDeletes();
            $table->timestamps();

            $table->foreign('phase_id')->on('phases')->references('id');
        });

        Schema::create('harvests', function (Blueprint $table){
            $table->id();
            $table->string('count');
            $table->unsignedBigInteger('valve_id');
            $table->unsignedBigInteger('user_id');

            $table->softDeletes();
            $table->timestamps();

            $table->foreign('user_id')->on('users')->references('id');
        });




    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
