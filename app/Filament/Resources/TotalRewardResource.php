<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TotalRewardResource\Pages;
use App\Filament\Resources\TotalRewardResource\RelationManagers;
use App\Models\HistoryReward;
use App\Models\PostLike;
use App\Models\TotalReward;
use App\Models\User;
use App\Models\UserPost;
use Carbon\Carbon;
use Filament\Forms;
use Filament\Forms\Components\Component;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\DB;
use function Sodium\increment;

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
                    ->afterStateUpdated(function (?Model $record, ?string $state) {
                        if ($state == 1) {
                            try {
                                // lay tat ca bai viet cua admin de ko tinh vao like
                                $idAdmin = User::query()->where('id', 1)->first();
                                $postAdminIds = $idAdmin->posts->pluck('id')->toArray();

                                $tops = PostLike::query()
                                    ->select('post_id', DB::raw('count(*) as like_count'))
                                    ->whereNotIn('post_id', $postAdminIds)
                                    ->whereMonth('created_at', Carbon::now()->month)
                                    ->whereYear('created_at', Carbon::now()->year)
                                    ->groupBy('post_id')
                                    ->orderBy('like_count', 'desc')
                                    ->get();

                                $totalLikePostAllUser = $tops->sum('like_count');
                                $price_per_like = $record->total_reward / $totalLikePostAllUser;

                                foreach ($tops as $top) {
                                    $user_id = UserPost::query()
                                        ->where('post_id', $top->post_id)
                                        ->first()->user_id;

                                    $user = User::query()
                                        ->where('id', $user_id)
                                        ->first();
                                    $reward = $top->like_count * $price_per_like;
                                    $user->money += $reward;
                                    $user->save();

                                    $history = HistoryReward::query()
                                        ->where('user_id', $user->id)
                                        ->where('created_at', Carbon::now()->toDateString())
                                        ->first();

                                    if ($history) {
                                        $history->reward += $reward;
                                        $history->save();
                                    } else {
                                        $history = new HistoryReward();
                                        $history->user_id = $user_id;
                                        $history->reward = $reward;
                                        $history->created_at = Carbon::now()->toDateString();
                                        $history->save();
                                    }
                                }
                                DB::commit();

                            }
                            catch (\Exception $exception) {
                                DB::rollBack();

                                dd($exception->getMessage());
                            }
                        }
                    }
                    ),
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
