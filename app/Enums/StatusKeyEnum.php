<?php declare(strict_types=1);

namespace App\Enums;

use BenSampo\Enum\Contracts\LocalizedEnum;
use BenSampo\Enum\Enum;


final class StatusKeyEnum extends Enum implements LocalizedEnum
{
    const NotBuy = 0;
    const Sold = 1;
    const NotActive = 2;
    const Active = 3;
}
