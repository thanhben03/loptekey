<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function users()
    {
        return $this->belongsToMany(User::class, 'user_posts', 'user_id', 'id');
    }

    public function like()
    {
        return $this->hasMany(PostLike::class, 'post_id', 'id');
    }

    public function user_post()
    {
        return $this->hasMany(UserPost::class);

    }

    public function images()
    {
        return $this->hasMany(PostImage::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
}
