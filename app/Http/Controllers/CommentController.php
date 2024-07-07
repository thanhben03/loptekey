<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function getCommentByIdPost(Request $request)
    {
        $post_id = $request->post_id;
        $titlePost = Post::query()
            ->where('id', $post_id)
            ->select('title')
            ->firstOrFail();
        $comments = Comment::query()
            ->where('post_id', $post_id)
            ->orderBy('created_at', 'desc')
            ->get();
        $comments->title_post = $titlePost->title;
        return response()->json([
            'data' => $comments,
            'title_post' => $titlePost

        ]);
    }

    public function postComment(Request $request)
    {
        $data = $request->all();
        $data['ip'] = $request->ip();
        $comment = Comment::query()->create($data);

        return response()->json([
            'msg' => 'success',
            'data' => $comment
        ]);

    }
}
