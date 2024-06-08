<?php

namespace App\Filament\Resources;

use App\Filament\Resources\KeyTypeResource\Pages;
use App\Filament\Resources\KeyTypeResource\RelationManagers;
use App\Models\KeyType;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class KeyTypeResource extends Resource
{
    protected static ?string $model = KeyType::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationGroup = 'Quản Lý Key';
    protected static ?string $navigationLabel = 'Loại Key';


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name_type')
                ->label('Name')
                ->required(),
                Forms\Components\TextInput::make('number_day')
                ->label('Số ngày')
                ->required()
                ->numeric(),
                Forms\Components\TextInput::make('price')
                ->label('Giá')
            ])->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name_type')
                ->label('Tên')
                ->searchable()
                ->sortable(),
                Tables\Columns\TextColumn::make('number_day')
                ->label('Số ngày')
                ->sortable(),
                Tables\Columns\TextColumn::make('price')
                ->label('Giá')
                ->searchable()
                ->sortable(),

            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListKeyTypes::route('/'),
            'create' => Pages\CreateKeyType::route('/create'),
            'edit' => Pages\EditKeyType::route('/{record}/edit'),
        ];
    }
}
