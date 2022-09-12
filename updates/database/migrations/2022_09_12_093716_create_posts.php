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
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->string('title',192);
            $table->text('body');
            $table->timestamps();
            $table->bigInteger('user_id')->default(12);
            $table->string('img',300);
                

            $table->softDeletes();
        });
       
    }
    // Columns:
    //     id bigint UN AI PK 
    //     title varchar(192) 
    //     body text 
    //     created_at timestamp 
    //     updated_at timestamp 
    //     deleted_at timestamp 
    //     user_id bigint UN 
    //     img varchar(255
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
};
