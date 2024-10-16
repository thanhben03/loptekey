<?php

namespace App\Http\Controllers;

use App\Enums\StatusKeyEnum;
use App\Http\Requests\BuyKeyRequest;
use App\Models\Key;
use App\Models\KeyType;
use App\Models\License;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
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

    public function liveLicense(Request $request)
    {
        $data = $request->all();
        $currentSessionId = \request()->cookie('session_id');
        try {
            $exist = Key::query()
                ->where('session_id', '=', $currentSessionId)
                ->firstOrFail();
        } catch (\Throwable $e) {
            Cookie::queue(Cookie::forget('session_id'));
            echo $e->getMessage();
        }


    }

    public function checkLicense(Request $request)
    {


        $currentTime = date('Y-m-d H:i:s');

        $license = $request->license;
        $timeSession = 0;
        $res_number_day = 0; // tra ve client de luu so ngay ton tai cua cookie
        try {
            $check = Key::query()
                ->where('name', '=', $license)
                ->firstOrFail();
            if ($check->expired != null) {
                if ($check->expired <= $currentTime) {
                    throw new \Exception('Key hết hạn !');
                }
                $last_session_id = \request()->cookie('session_id');
                if ($check->session_id != $last_session_id) {
                    throw new \Exception('Key chỉ được kích hoạt trên một thiết bị');
                }
            } else {
                $numberDay = '+ '.$check->number_day.' days';
                $check->expired = date('Y-m-d', strtotime($currentTime.$numberDay));
                $ss_id = session()->getId();
                $timeSession = intval($check->number_day) * 24 * 60;
                $check->session_id = $ss_id;
                $check->ip = request()->ip();
                $check->status = 3; // set trang thai da kich hoat
                $check->save();
            }
            return \response()->json([
                'msg' => 'Kích hoạt thành công',
                'license' => $check
            ], 200)->withCookie(cookie('session_id', $check->session_id, $timeSession));

        } catch (\Throwable $e) {
            return \response()->json([
                'msg' => $e->getMessage()
            ], 400);
        }


    }
}
