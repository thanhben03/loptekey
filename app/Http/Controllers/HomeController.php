<?php

namespace App\Http\Controllers;

use App\Models\HistoryReward;
use App\Models\HistoryWithdraw;
use App\Models\Key;
use App\Models\KeyType;
use App\Models\Order;
use App\Models\PostLike;
use App\Models\TotalReward;
use App\Models\User;
use App\Models\UserPost;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Number;
use PHPUnit\Event\Code\Throwable;

class HomeController extends Controller
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

    public function home()
    {

        $keyType = KeyType::query()
            ->whereNot('id', '=', 5)
            ->get();
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

        $idAdmin = User::query()->where('id', 1)->first();
        $postAdminIds = $idAdmin->posts->pluck('id')->toArray();
        $tops = PostLike::query()
            ->select('post_id', DB::raw('count(*) as like_count'))
            ->whereNotIn('post_id', $postAdminIds)
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

        $rewards = HistoryReward::query()
            ->where('user_id', \auth()->user()->id)
            ->get();
        $totalLike = $tops->sum('like_count');

        // Lay tong thuong theo thang
        $total_reward = $this->getTotalReward();

        // price tren 1 like
        $price_per_like = $totalLike == 0 ? 0 : $total_reward->total_reward / $totalLike;

        // lay post theo user id
        if (Auth::user()->id != 1) {
            $postIds = UserPost::query()
                ->where('user_id', Auth::user()->id)
                ->pluck('post_id');
            // lay reward by user_id
            $myReward = $this->getRewardByUserId($postIds, $price_per_like);
        } else {
            $myReward = 0;
        }



        return view('client.reward',
            [
                'tops' => $tops,
                'total_reward' => Number::currency($total_reward->total_reward, 'VND'),
                'price_per_like' => Number::currency($price_per_like, 'VND'),
                'myReward' => Number::currency($myReward, 'VND'),
                'rewards' => $rewards,
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
            ->where('user_id', \auth()->user()->id)
            ->first();

        $canGetReward = TotalReward::query()
            ->whereMonth('created_at', $month)
            ->whereYear('created_at', $year)
            ->where('status', 1)
            ->first();
        if (!$canGetReward) {
            return redirect()->back()->with('msg', 'Chưa đến thời gian nhận thưởng');

        }
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

    public function withdraw()
    {
        $histories = HistoryWithdraw::query()->orderBy('updated_at', 'DESC')->get();
        return view('client.withdraw', compact('histories'));
    }

    public function processWithdraw(Request $request)
    {
        try {
            DB::beginTransaction();
            $amount = $request->amount;

            $min = 20000;
            $myMoney = Auth::user()->money;

            if ($amount < $min) {
                throw new \Error('Số tiền phải lớn hơn '.$min);
            }

            if ($myMoney < $amount) {
                throw new \Error('Số dư không đủ !');

            }

            HistoryWithdraw::query()->create([
                'user_id' => \auth()->user()->id,
                'bank_name' => $request->bank_name,
                'stk' => $request->stk,
                'fullname' => $request->fullname,
                'money' => $amount
            ]);

            \auth()->user()->update([
                'money' => $myMoney - $amount
            ]);
            DB::commit();
            return redirect()->back()->with('msg', 'Success !');
        } catch (\Throwable $e) {
            DB::rollBack();
            return redirect()->back()->with('msg', $e->getMessage());
        }


    }
}
