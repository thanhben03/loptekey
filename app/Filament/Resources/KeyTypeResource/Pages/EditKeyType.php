<?php

namespace App\Filament\Resources\KeyTypeResource\Pages;

use App\Filament\Resources\KeyTypeResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditKeyType extends EditRecord
{
    protected static string $resource = KeyTypeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
