<?php

namespace App\Http\Controllers;

use App\Models\KeyType;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function home()
    {
        $keyType = KeyType::query()->get();
        $historyBuy = Order::query()->where('user_id', Auth::user()->id)->get();
        return view('client.home', compact('keyType', 'historyBuy'));
    }
}
