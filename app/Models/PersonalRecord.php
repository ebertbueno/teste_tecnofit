<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PersonalRecord extends Model
{
    public $table = 'personal_record';
    public $primarykey = 'id';
    public $fillable = [
        'user_id', 'movement_id', 'value', 'date', 'created_at', 'updated_at', 'deleted_at'
    ];

    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];

    public function Users()
    {
        return $this->HasMany('App\Models\Users', 'id', 'user_id');
    }

    public function Movement()
    {
        return $this->HasMany('App\Models\Movement', 'id', 'movement_id');
    }
}
