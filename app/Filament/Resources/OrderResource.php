<?php

namespace App\Filament\Resources;

use App\Filament\Resources\OrderResource\Pages;
use App\Filament\Resources\OrderResource\RelationManagers;
use App\Models\Key;
use App\Models\Order;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class OrderResource extends Resource
{
    protected static ?string $model = Order::class;

    protected static ?string $navigationIcon = 'heroicon-o-archive-box';

    protected static ?string $navigationGroup = 'Quản Lý Key';
    protected static ?string $navigationLabel = 'Lịch Sử Mua';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

    public static function table(Table $table): Table
    {
//        dd(Key::query()->where('id',1)->first()->keyType);
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('user.name')
                ->searchable(),
                Tables\Columns\TextColumn::make('key.keytype.name_type')
                ->searchable()
                ->label('Loại Key'),
                Tables\Columns\IconColumn::make('key.status')
                    ->label('Trạng Thái')
                    ->boolean(),
                Tables\Columns\TextColumn::make('key.RemainingDays')
                    ->label('Còn lại')
                    ->badge()
                    ->color(function ($state) {
                        if ($state == "Hết hạn") {
                            return 'danger';
                        }

                        return 'success';
                    }),
                Tables\Columns\TextColumn::make('key.name')
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
            'index' => Pages\ListOrders::route('/'),
            'create' => Pages\CreateOrder::route('/create'),
            'edit' => Pages\EditOrder::route('/{record}/edit'),
        ];
    }
}
