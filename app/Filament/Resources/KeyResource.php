<?php

namespace App\Filament\Resources;

use App\Enums\StatusKeyEnum;
use App\Filament\Resources\KeyResource\Pages;
use App\Filament\Resources\KeyResource\RelationManagers;
use App\Models\Key;
use App\Models\KeyType;
use Filament\Actions\ViewAction;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Hamcrest\Core\Set;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Log;

class KeyResource extends Resource
{
    protected static ?string $model = Key::class;

    protected static ?string $navigationLabel = 'Key';

    protected static ?string $navigationIcon = 'heroicon-o-key';
    protected static ?string $navigationGroup = 'Quản Lý Key';




    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('key_type_id')
                    ->label('Loại key')
                    ->options(function (): array {
                        return KeyType::all()->pluck('name_type', 'id')->all();
                    })
                    ->afterStateUpdated(function (Forms\Set $set, ?string $state, ?string $old) {
                        $keyType = KeyType::query()->where('id', $state)->first();
                        $set('number_day', $keyType['number_day']);
                    })
                    ->required()
                    ->live(),
                Forms\Components\TextInput::make('number_day')
                    ->integer()
                    ->readOnly()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('keytype.price')
                    ->label('Giá')
                    ->money('vnd')
                    ->sortable(),
                Tables\Columns\TextColumn::make('expired')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('keyType.name_type')
                    ->sortable(),
                Tables\Columns\TextColumn::make('status')
                    ->formatStateUsing(fn (string $state): string => StatusKeyEnum::getDescription(intval($state)))
                    ->sortable()
                    ->badge()
                    ->color(function ($state) {
                        if ($state == StatusKeyEnum::NotBuy) {
                            return 'info';
                        } else if ($state == StatusKeyEnum::Sold) {
                            return 'warning';
                        } else if ($state == StatusKeyEnum::Active) {
                            return 'success';
                        } else {
                            return 'danger';
                        }
                    }),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('Lọai')
                ->relationship('keytype', 'name_type')
                ->searchable()
                ->preload(),
                Tables\Filters\SelectFilter::make('status')
                    ->label('Trạng thái')
                    ->options(StatusKeyEnum::asSelectArray())
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\ViewAction::make()
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
            'index' => Pages\ListKeys::route('/'),
            'create' => Pages\CreateKey::route('/create'),
            'edit' => Pages\EditKey::route('/{record}/edit'),
        ];
    }
}
