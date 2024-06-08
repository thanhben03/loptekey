<?php


use App\Enums\StatusKeyEnum;

return [

    StatusKeyEnum::class => [
        StatusKeyEnum::NotBuy => 'Chưa bán',
        StatusKeyEnum::Sold => 'Đã bán',
        StatusKeyEnum::NotActive => 'Chưa kích hoạt',
        StatusKeyEnum::Active => 'Đã kích hoạt',
    ],

];
