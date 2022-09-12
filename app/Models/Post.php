<?php

namespace App\Models;

use Carbon\Traits\Timestamp;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;



class Post extends Model
{
    
    protected $fillable = ['title', 'body', 'user_id', 'img'];
    /**
    * The table associated with the model.
    *
    * @var string
    */

    use HasFactory;
    use SoftDeletes;

    public function user(){
        return $this->belongsTo('App\Models\User');
    }

    
}
