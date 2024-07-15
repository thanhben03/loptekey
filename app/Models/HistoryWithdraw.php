<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HistoryWithdraw extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table = 'history_withdraw';

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
