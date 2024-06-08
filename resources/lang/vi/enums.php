<?php

use App\Enums\StatusKeyEnum;

return [

    StatusKeyEnum::class => [
        StatusKeyEnum::NotBuy->value => 'Chưa bán',
        StatusKeyEnum::Sold->value => 'Đã bán',
        StatusKeyEnum::NotActive->value => 'Chưa kích hoạt',
        StatusKeyEnum::Active->value => 'Đã kích hoạt',
    ],

];
