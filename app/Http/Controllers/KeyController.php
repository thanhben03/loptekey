<?php

namespace App\Http\Controllers;

use App\Enums\StatusKeyEnum;
use App\Http\Requests\BuyKeyRequest;
use App\Models\Key;
use App\Models\KeyType;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class KeyController extends Controller
{
    public function buyKey(BuyKeyRequest $request)
    {
        try {
            DB::beginTransaction();
            $user = Auth::user();
            $data = $request->validated();
            $existKeyType = KeyType::query()->find($data['key_id']);

            if ($user->money < $existKeyType->price) {
                throw new \Error('Số dư không đủ để mua key này !');

            }

            $existKey = Key::query()
                ->where('key_type_id', $existKeyType->id)
                ->where('status', StatusKeyEnum::NotBuy)
                ->first();
            if ($existKey == null)
                throw new \Error('Key tạm hết !');
            if ($user->money >= $existKeyType->price) {
                $user->money -= $existKeyType->price;
                $user->save();
            }
            $existKey->status = StatusKeyEnum::Sold;
            $existKey->save();
            Order::query()->create([
                'key_id' => $existKey->id,
                'user_id' => $user->id
            ]);

            DB::commit();

            return response()->json([
                'status' => 'success',
                'msg' => 'Success !',
                'data' => array_merge($existKey->toArray(), $existKeyType->toArray())
            ]);
        } catch (\Throwable $e) {
            DB::rollBack();
            return response()->json([
                'status' => 'error',
                'msg' => $e->getMessage()
            ], 400);
        }

    }

    public function createKey(Request $request)
    {
        dd($request->all());
    }
}
