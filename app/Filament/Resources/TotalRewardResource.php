<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TotalRewardResource\Pages;
use App\Filament\Resources\TotalRewardResource\RelationManagers;
use App\Models\TotalReward;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TotalRewardResource extends Resource
{
    protected static ?string $model = TotalReward::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationGroup = 'Quản lý bài đăng';
    protected static ?string $navigationLabel = 'Tổng thưởng';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('total_reward')
                    ->label('Tổng thưởng'),
                Forms\Components\Select::make('status')
                    ->options([
                        '1' => 'Chốt sổ',
                        '0' => 'Chờ',
                    ])
                    ->label('Tổng thưởng'),
                Forms\Components\DatePicker::make('apply_date')
                    ->label('Thời gian')
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('total_reward')
                ->label('Tổng thưởng')
                ->money('vnd'),
                Tables\Columns\SelectColumn::make('status')
                    ->options([
                        '1' => 'Chốt sổ',
                        '0' => 'Chờ',
                    ])
                    ->afterStateUpdated(function (?string $state) {
                        dd($state);
                    }),
                Tables\Columns\TextColumn::make('apply_date')
                ->label('Thời gian')
                ->searchable()
                ->dateTime('d-m-Y')
            ])->defaultSort('apply_date', 'desc')
            ->filters([

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
            'index' => Pages\ListTotalRewards::route('/'),
            'create' => Pages\CreateTotalReward::route('/create'),
//            'edit' => Pages\EditTotalReward::route('/{record}/edit'),
        ];
    }
}
