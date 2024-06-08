<?php

namespace App\Filament\Resources\TotalRewardResource\Pages;

use App\Filament\Resources\TotalRewardResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTotalReward extends EditRecord
{
    protected static string $resource = TotalRewardResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
