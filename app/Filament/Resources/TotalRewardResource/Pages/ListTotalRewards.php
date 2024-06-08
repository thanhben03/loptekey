<?php

namespace App\Filament\Resources\TotalRewardResource\Pages;

use App\Filament\Resources\TotalRewardResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTotalRewards extends ListRecords
{
    protected static string $resource = TotalRewardResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
