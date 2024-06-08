<?php

namespace App\Filament\Resources\KeyTypeResource\Pages;

use App\Filament\Resources\KeyTypeResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListKeyTypes extends ListRecords
{
    protected static string $resource = KeyTypeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
