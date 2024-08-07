<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HistoryReward extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table = 'history_rewards';
    public $timestamps = false;

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
