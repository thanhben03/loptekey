<?php

namespace App\Http\Controllers;

use App\Models\Key;
use App\Models\Order;
use App\Models\Payment;
use App\Models\Setting;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Number;
use PayOS\PayOS;

class PaymentController extends Controller
{

    public function __construct()
    {
        $now = Carbon::now();
        $month = $now->month;
        $year = $now->year;
        $this->middleware(function ($request, $next) use ($now, $month, $year) {
            $isTick = false;
            if (Auth::check()) {
                $keyIds = Order::query()
                    ->where('user_id', \auth()->user()->id)
                    ->get()
                    ->pluck('key_id');

                $isTick = Key::query()
                    ->whereIn('id', $keyIds)
                    ->whereDate('expired', '>=', $now)
                    ->first();
            }
            view()->share('isTick', !!$isTick);
            return $next($request);
        });
    }

    public function createPaymentLink(Request $request)
    {
        $YOUR_DOMAIN = "https://filament.test";
        $data = [
            "orderCode" => intval(substr(strval(microtime(true) * 10000), -6)),
            "amount" => intval($request->amount),
            "description" => "Donate user". Auth::user()->id,
            "returnUrl" => route('paymentSuccess'),
            "cancelUrl" => "/",
        ];
        error_log($data['orderCode']);
        $PAYOS_CLIENT_ID = env('PAYOS_CLIENT_ID');
        $PAYOS_API_KEY = env('PAYOS_API_KEY');
        $PAYOS_CHECKSUM_KEY = env('PAYOS_CHECKSUM_KEY');

        $payOS = new PayOS($PAYOS_CLIENT_ID, $PAYOS_API_KEY, $PAYOS_CHECKSUM_KEY);
        try {
            $response = $payOS->createPaymentLink($data);
            return redirect($response['checkoutUrl']);
            // $response = $payOS->getPaymentLinkInformation($data['orderCode']);
            // return $response;
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }

    public function paymentSuccess(Request $request)
    {
        $PAYOS_CLIENT_ID = env('PAYOS_CLIENT_ID');
        $PAYOS_API_KEY = env('PAYOS_API_KEY');
        $PAYOS_CHECKSUM_KEY = env('PAYOS_CHECKSUM_KEY');
        $payOS = new PayOS($PAYOS_CLIENT_ID, $PAYOS_API_KEY, $PAYOS_CHECKSUM_KEY);

        $orderCode = $request->orderCode;

        $resultPayment = $payOS->getPaymentLinkInformation($orderCode);
        $transaction = $resultPayment['transactions'][0];
        $content = $transaction['description'];
        try {
            DB::beginTransaction();
            if (!Payment::query()->where('orderCode', $orderCode)->exists()) {
                $res = Payment::query()
                    ->create([
                        'user_id' => Auth::user()->id,
                        'amount' => $transaction['amount'],
                        'content' => $content,
                        'status' => 1,
                        'orderCode' => $orderCode,
                    ]);
                $totalMoney = $transaction['amount'] + Auth::user()->money;
                Auth::user()->update([
                    'money' => $totalMoney,
                ]);
            }
            DB::commit();
        } catch (\Throwable $exception) {
            DB::rollBack();
            print_r($exception->getMessage());
        }

        return view('client.payment-success', [
            'amount' => Number::currency($transaction['amount'], 'VND'),
            'username' => Auth::user()->name
        ]);
    }

    public function charge()
    {
        $charges = Payment::query()->where('user_id', Auth::user()->id)->get();
        $minCharge = Setting::query()->where('key', 'min_charge')
            ->first()->value;
        $minChargeFormat = Number::currency($minCharge, 'VND');
        return view('client.charge', compact('charges', 'minCharge', 'minChargeFormat'));
    }
}
