<?php

namespace App\Filament\Resources\HistoryRewardResource\Pages;

use App\Filament\Resources\HistoryRewardResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditHistoryReward extends EditRecord
{
    protected static string $resource = HistoryRewardResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
