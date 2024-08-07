<?php

namespace App\Filament\Resources;

use App\Filament\Resources\HistoryRewardResource\Pages;
use App\Filament\Resources\HistoryRewardResource\RelationManagers;
use App\Models\HistoryReward;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class HistoryRewardResource extends Resource
{
    protected static ?string $model = HistoryReward::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationGroup = 'Quản Lý Người Dùng';
    protected static ?string $navigationLabel = 'Lịch sử nhận thưởng';


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('reward')
                ->type('text')
                ->maxLength(255)
                ->required()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('user.name')
                ->searchable()
                ->sortable(),
                Tables\Columns\TextColumn::make('reward')
                ->searchable()
                ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                ->searchable()
                    ->date()
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
            'index' => Pages\ListHistoryRewards::route('/'),
            'create' => Pages\CreateHistoryReward::route('/create'),
            'edit' => Pages\EditHistoryReward::route('/{record}/edit'),
        ];
    }
}
