<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Models\Movie;
use App\Models\Order;
use App\Models\Post;
use App\Models\PostImage;
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
        $user = Auth::user();
        $posts = UserPost::query()
            ->where('user_id', $user->id)
            ->join('posts','posts.id', '=', 'user_posts.post_id')
            ->orderBy('posts.updated_at', 'desc')
            ->get();
        return view('client.post', compact('games', 'movies', 'posts'));
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

    public function hidePost()
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
        return view('client.hide-post', compact('posts', 'user', 'tops'));
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

    public function edit($id)
    {
        $post = UserPost::query()
            ->where('user_id', Auth::user()->id)
            ->where('post_id', $id)
            ->firstOrFail()
            ->post;
        $games = Game::all();
        $movies = Movie::all();
        $posts = UserPost::query()
            ->where('user_id', Auth::user()->id)
            ->join('posts','posts.id', '=', 'user_posts.post_id')
            ->orderBy('posts.updated_at', 'desc')
            ->get();
        return view('client.edit-post', compact('post','posts', 'games', 'movies'));
    }

    public function update($id, Request $request)
    {
        try {
            DB::beginTransaction();

            $request['slug'] = Str::slug($request->title);
            $data = $request->validate([
                'title' => 'required|max:100',
                'slug' => 'nullable',
                'content' => 'required:max:1000',
                'tag_name' => 'required'
            ]);
            $inserts = [];
            if($request->hasfile('files'))
            {
                $totalImage = PostImage::query()->where('post_id', $id)->count();
                $totalImage += count($request->file('files'));
                if ($totalImage > 3) {

                    throw new \Error('Chỉ cho phép tối đa 3 ảnh !');
                }
                foreach($request->file('files') as $file)
                {
                    $image_name = time().$file->getClientOriginalName();
                    $destinationPath = public_path('/public/uploads/files/');
                    $file->move($destinationPath, $image_name);
                    $path = "/public/uploads/files/".$image_name;
                    $inserts[] = [
                        'post_id' => $id,
                        'path' => $path
                    ];
                }

                PostImage::query()->insert($inserts);
            }
            $post = UserPost::query()
                ->where('user_id', Auth::user()->id)
                ->where('post_id', $id)
                ->firstOrFail()
                ->post;

            $post->fill($data);
            $post->save();
            DB::commit();
            return redirect()->back()->with('msg', 'Cập nhật bài viết thành công ! Hãy chờ admin phê duyệt.');
        } catch (\Throwable $e) {
            DB::rollBack();

            return redirect()->back()->with('msg', $e->getMessage());
        }
    }

    public function destroy($id)
    {
        $user = Auth::user();
        $myPost = UserPost::query()
            ->where('user_id', $user->id)
            ->where('post_id', $id)
            ->firstOrFail();
        $myPost->post->delete();

        return redirect()->back();
    }
}
