<?php

namespace App\Http\Controllers;

use App\Models\Key;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
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
        $YOUR_DOMAIN = "http://filament.test";
        $data = [
            "orderCode" => intval(substr(strval(microtime(true) * 10000), -6)),
            "amount" => intval($request->amount),
            "description" => "Thanh toán đơn hàng",
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
        $userId = Auth::user()->id;
        $resultPayment = $payOS->getPaymentLinkInformation($orderCode);
        dd($resultPayment);
        return view('client.payment-success');
    }

    public function charge()
    {
        return view('client.charge');
    }
}
