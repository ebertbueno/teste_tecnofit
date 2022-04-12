<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Movement extends Model
{
    public $table = 'movement';
    public $primarykey = 'id';
    public $fillable = [
        'name', 'created_at', 'updated_at', 'deleted_at'
    ];

    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];

    protected $appends = ['pegaUsers'];
    public function getpegaUsersAttribute()
    {
        $data = Model('PersonalRecord')::where('user_id', $this->id)->orderby('value', 'desc')->get();
        $data = $data->groupby('value');
        return $this->attributes['pegaUsers'] = $data;
    }
}
