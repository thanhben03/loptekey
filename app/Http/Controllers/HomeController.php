<?php

namespace App\Http\Controllers;

use App\Models\Key;
use App\Models\KeyType;
use App\Models\Order;
use App\Models\PostLike;
use App\Models\User;
use App\Models\UserPost;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Number;

class HomeController extends Controller
{
    public function __construct()
    {
        $now = Carbon::now();
        $month = $now->month;
        $year = $now->year;
        $this->middleware(function ($request, $next) use ($now){
            $keyIds = Order::query()
            ->where('user_id', \auth()->user()->id)
            ->get()
            ->pluck('key_id');

            $isTick = Key::query()
                ->whereIn('id', $keyIds)
                ->where('expired', '>=', $now)
                ->first();
            view()->share('isTick', !!$isTick);
            return $next($request);
        });

    }

    public function home()
    {

        $keyType = KeyType::query()->get();
        $historyBuy = Order::query()->where('user_id', Auth::user()->id)->get();
        return view('client.home', compact('keyType', 'historyBuy'));
    }

    public function charge()
    {
        return view('client.charge');
    }

    public function getAllPostLike()
    {
        $now = Carbon::now();
        $month = $now->month;
        $year = $now->year;

        $tops = PostLike::query()
            ->select('post_id', DB::raw('count(*) as like_count'))
            ->whereMonth('created_at', $month)
            ->whereYear('created_at', $year)
            ->groupBy('post_id')
            ->orderBy('like_count', 'desc')
            ->get();

        return $tops;
    }

    public function reward()
    {
        $now = Carbon::now();
        $month = $now->month;
        $year = $now->year;

        $tops = $this->getAllPostLike();


        $totalLike = $tops->sum('like_count');

        // Lay tong thuong theo thang
        $total_reward = $this->getTotalReward();

        // price tren 1 like
        $price_per_like = $total_reward->total_reward/$totalLike;

        // lay post theo user id
        $postIds = UserPost::query()->where('user_id', Auth::user()->id)->pluck('post_id');

        // lay reward by user_id
        $myReward = $this->getRewardByUserId($postIds, $price_per_like);

        return view('client.reward',
            [
                'tops' => $tops,
                'total_reward' => Number::currency($total_reward->total_reward, 'VND'),
                'price_per_like' => Number::currency($price_per_like, 'VND'),
                'myReward' => Number::currency($myReward, 'VND'),
            ]
        );
    }

    public function getRewardByUserId($postIds, $price_per_like)
    {
        $now = Carbon::now();
        $month = $now->month;
        $year = $now->year;

        return PostLike::query()
            ->select('post_id', DB::raw('count(*) as like_count'))
            ->whereIn('post_id', $postIds)
            ->whereMonth('created_at', $month)
            ->whereYear('created_at', $year)
            ->groupBy('post_id')
            ->orderBy('like_count', 'desc')
            ->get()->sum('like_count') * $price_per_like;


    }

    public function getTotalReward()
    {
        $now = Carbon::now();
        $month = $now->month;
        $year = $now->year;

        $total_reward = DB::table('total_rewards')
            ->whereMonth('apply_date', $month)
            ->whereYear('apply_date', $year)
            ->first();

        return $total_reward;
    }

    public function sendMoneyAward()
    {
        $now = Carbon::now();
        $month = $now->month;
        $year = $now->year;

        $exist = DB::table('history_rewards')
            ->whereMonth('created_at', $month)
            ->whereYear('created_at', $year)
            ->first();
        if ($exist != null) {
            return redirect()->back()->with('msg', 'Tháng này bạn đã nhận thưởng');
        }
        $totalLike = $this->getAllPostLike()->sum('like_count');

        $postIds = UserPost::query()
            ->where('user_id', Auth::user()->id)
            ->pluck('post_id');

        $price_per_like = $this->getTotalReward()->total_reward/$totalLike;

        $myReward = $this->getRewardByUserId($postIds, $price_per_like);
        $user = Auth::user();
        $user->money += $myReward;
        $user->save();

        DB::table('history_rewards')->insert([
            'reward' => $myReward,
            'user_id' => \auth()->user()->id,
            'created_at' => Carbon::now(),
        ]);
        return redirect()->route('reward')->with('msg', 'Success !');

    }
}
