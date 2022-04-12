<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Users extends Model
{
    public $table = 'users';
	public $primarykey = 'id';
	public $fillable = [
        'name', 'created_at', 'updated_at', 'deleted_at'
    ];

    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];
}
