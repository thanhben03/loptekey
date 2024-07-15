<?php

namespace App\Filament\Resources\HistoryWithdrawResource\Pages;

use App\Filament\Resources\HistoryWithdrawResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListHistoryWithdraws extends ListRecords
{
    protected static string $resource = HistoryWithdrawResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
