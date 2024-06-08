<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Models\Movie;
use App\Models\Order;
use App\Models\Post;
use App\Models\PostLike;
use App\Models\UserPost;
use App\Supports\Eloquent\Sluggable;
use Doctrine\DBAL\Driver\OCI8\Exception\Error;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class PostController extends Controller
{
    public function index()
    {
        $games = Game::all();
        $movies = Movie::all();
        return view('client.post', compact('games', 'movies'));
    }

    public function store(Request $request)
    {
        $request['slug'] = Str::slug($request->title);
        if (!$this->canPost()) {
            return redirect()->back()->with('msg', 'Bạn không có quyền đăng !');
        }
        $data = $request->validate([
            'title' => 'required|max:100',
            'slug' => 'nullable',
            'content' => 'required|max:1000',
            'tag_name' => 'required'
        ]);
        $post = Post::query()->create($data);
        UserPost::query()->create([
            'user_id' => Auth::user()->id,
            'post_id' => $post->id
        ]);

        return redirect()->back()->with('msg', 'Created Success !');
    }

    public function canPost()
    {
        $user = Auth::user();
        $now = Carbon::now();
        $currMonth = $now->month;
        $trans = Order::query()
            ->whereMonth('created_at', $currMonth)
            ->where('user_id', '=', $user->id)
            ->first();
        return !!$trans;

    }

    public function mainPost()
    {
        $posts = Post::query()
            ->active()
            ->orderBy('updated_at', 'desc')
            ->get();
        $user = Auth::user();
        $now = Carbon::now();
        $month = $now->month;
        $year = $now->year;
        $tops = PostLike::query()->select('post_id', DB::raw('count(*) as like_count'))
            ->whereMonth('created_at', $month)
            ->whereYear('created_at', $year)
            ->groupBy('post_id')
            ->orderBy('like_count', 'desc')
            ->get();
        return view('client.main-post', compact('posts', 'user', 'tops'));
    }

    public function likePost(Request $request)
    {
        $data = $request->all();
        $data['ip'] = $request->ip();
        $isLike = PostLike::query()
            ->where('post_id', $data['post_id'])
            ->where('ip', $data['ip'])
            ->first();
        if (!$isLike) {
            PostLike::query()->create($data);
        } else {
            return response()->json([
                'status' => 'error',
                'msg' => 'error'
            ], 400);
        }
        return response()->json([
            'status' => 'success',
            'msg' => 'success'
        ]);

    }
}
