<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PaymentController extends Controller
{
    public function charge(Request $request)
    {
        $amount = $request['amount'];
        $YOUR_DOMAIN = env("APP_URL");
        $orderCode = intval(substr(strval(microtime(true) * 10000), -6));
        $data = [
            "orderCode" => $orderCode,
            "amount" => intval($amount),
            "description" => "Banking for ".auth()->user()->name,
            "items" => [
                [
                    "name" => "Nạp tiền từ ngân hàng !",
                    "quantity" => 1,
                    "price" => $amount
                ]
            ],
            "returnUrl" => $YOUR_DOMAIN . "/client/payment-success",
            "cancelUrl" => $YOUR_DOMAIN . "/cancel.html"
        ];
        try {
            $response = $payOS->createPaymentLink($data);
            return redirect($response['checkoutUrl']);
        } catch (\Throwable $th) {
            echo $th->getMessage();
        }
    }

    public function chargeSuccess()
    {
        return view('client.payment-success');
    }
}
