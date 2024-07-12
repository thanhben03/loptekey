<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Key extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $appends = [
        'remaining_days'
    ];

    protected $dates = [
        'expired', // đảm bảo rằng cột này được xử lý như một đối tượng Carbon
    ];

    public function keyType()
    {
        return $this->belongsTo(KeyType::class, 'key_type_id', 'id');
    }

    public function getRemainingDaysAttribute()
    {
        $today = Carbon::now();
        // Lấy ngày dự kiến bắt đầu
        $expired = Carbon::parse($this->expired);

        // Tính toán số ngày còn lại
        $diffDays = $today->diffInDays($expired, false) + 1;

        if ($expired->toDateString() == $today->toDateString()) {
            return "Hôm nay";
        }
        if ($diffDays == 0) {
            return "Hết hạn";
        }
        // Hiển thị số ngày còn lại
        return "Còn lại: {$diffDays} ngày";
    }

}
