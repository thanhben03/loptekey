
@extends('layouts.post')
@section('content')
    <div class="main-content right-chat-active" style="background-image: url({{asset('images/background2.png')}})">

        <div class="middle-sidebar-bottom" >
            <div class="middle-sidebar-left">
                <!-- loader wrapper -->
                <div class="preloader-wrap p-3">
                    <div class="box shimmer">
                        <div class="lines">
                            <div class="line s_shimmer"></div>
                            <div class="line s_shimmer"></div>
                            <div class="line s_shimmer"></div>
                            <div class="line s_shimmer"></div>
                        </div>
                    </div>
                    <div class="box shimmer mb-3">
                        <div class="lines">
                            <div class="line s_shimmer"></div>
                            <div class="line s_shimmer"></div>
                            <div class="line s_shimmer"></div>
                            <div class="line s_shimmer"></div>
                        </div>
                    </div>
                    <div class="box shimmer">
                        <div class="lines">
                            <div class="line s_shimmer"></div>
                            <div class="line s_shimmer"></div>
                            <div class="line s_shimmer"></div>
                            <div class="line s_shimmer"></div>
                        </div>
                    </div>
                </div>
                <!-- loader wrapper -->
                <div class="row feed-body">
                    <div class="col-xl-8 mb-4"
                         style="
                            background: cornsilk
                         ">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Home</button>
                                <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Ranking</button>
                                <a href="https://loptephim.teebi.shop" class="nav-link">Quay lại</a>
                            </div>
                        </nav>
                    </div>
                    <div class="col-xl-8">
                        <div class="alert alert-success">
                            Tổng thưởng của tháng này là: 500.000đ
                        </div>
                        <div class="alert alert-info @if($fromUser == '') d-none @endif">
                            Bạn đang xem bài viết của {{$fromUser}} <a href="{{route('mainPost')}}">Quay lại</a>
                        </div>
                    </div>
                    <div class="tab-content" id="nav-tabContent">
                        <div id="nav-home" class="tab-pane fade show active col-xl-8 col-xxl-9 col-lg-8">
                            @foreach($posts as $post)
                                <div class="card w-100 shadow-xss rounded-xxl border-0 p-4 mb-3 ct-box-shadow">
                                    <div class="card-body p-0 d-flex">
                                        <a href="{{route('mainPost')."?user_id="}}{{$post->user_post[0]->user->id}}">
                                            <figure class="avatar me-3"><img src="{{$post->user_post[0]->user->avatar}}" alt="image" class="shadow-sm rounded-circle w45"></figure>
                                        </a>
                                        <h4 class="fw-700 text-grey-900 font-xssss mt-1">{{$post->user_post[0]->user->name}}<span class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">{{$post->updated_at->diffForHumans()}}</span></h4>
                                        <a href="#" class="ms-auto" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false"><i class="ti-more-alt text-grey-900 btn-round-md bg-greylight font-xss"></i></a>
                                    </div>
                                    <div class="card-body p-0 me-lg-5 post-content">
                                        <h3><strong>{{$post->title}}</strong></h3>
                                        <p class="fw-500 text-grey-500 lh-26 font-xssss w-100">
                                            {!! $post->content !!}
                                        <div  class="col-12 @if(!$post->link) d-none @endif" id="wrap-link-{{$post->id}}">
                                            Link:
                                            @if(!in_array(request()->ip(), $post->like))
                                                <span style="background: aquamarine;">Bạn phải ấn like để thấy link download !</span>
                                            @else
                                                <div class="d-flex flex-column">
                                                    @foreach($post->links as $links)
                                                        <a href="{{$links->link}}">{{$links->name_link}}</a>
                                                    @endforeach
                                                </div>
                                            @endif
                                        </div>
                                        </p>
                                    </div>
                                    <div class="card-body d-block p-0">
                                        <div class="row ps-2 pe-2">
                                            @if(count($post->images) >= 1)
                                                @foreach($post->images as $image)
                                                    <div class="col-xs-4 col-sm-4 p-1">
                                                        <a onclick="showImageModal({{$image->id}})" >
                                                            <img id="image-post-{{$image->id}}" src="{{$image->path}}" class="rounded-3 w-100" alt="image">
                                                        </a>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                    </div>
                                    <div class="card-body d-flex p-0 mt-3">
                                            <span style="margin-right: 5px;" id="post-{{$post->id}}">{{isset($post->like) ? count($post->like) : 0}} </span>

                                            @if(count($post->like) >= 1)

                                                @if(!in_array(request()->ip(),$post->like))
                                                    <i
                                                        onclick="likePost({{$post->id}})"
                                                        class="feather-thumbs-up me-1 btn-round-xs font-md"
                                                        id="btn-like-{{$post->id}}"
                                                    >
                                                    </i>
                                                @else
                                                    <i
                                                        class="feather-thumbs-up me-1 btn-round-xs font-md"
                                                        style="color: chartreuse"
                                                    >
                                                    </i>
                                                @endif
                                            @else
                                                <i
                                                    onclick="likePost({{$post->id}})"
                                                    class="feather-thumbs-up me-1 btn-round-xs font-md"
                                                    id="btn-like-{{$post->id}}"
                                                >
                                                </i>
                                            @endif
                                            <div style="margin-left: 10px;" class="" onclick="showComment({{$post->id}})">
                                                {{$post->comments->count()}} comments
                                            </div>


                                    </div>

                                </div>

                            @endforeach
                        </div>
                        <div id="nav-profile" class="tab-pane fade col-xl-8">
                            <table class="table table-striped table-hover ct-box-shadow" style="    background: azure;">
                                <thead>
                                <tr>
                                    <th>Top</th>
                                    <th>Post</th>
                                    <th>User</th>
                                    <th>Like</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($tops as $key => $top)
                                    <tr>
                                        <th>{{++$key}}</th>
                                        <th>
                                            {{$top->post->title}}
                                        </th>
                                        <th>
                                            {{$top->post->user_post[0]->user->name}}
                                        </th>
                                        <th>{{$top->like_count}}</th>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- Trigger the Modal -->
    <img id="myImg" src="" alt="Snow" style="display: none">

    <!-- The Modal Show Image-->
    <div id="myModal" class="modal">

        <!-- The Close Button -->
        <span class="close">&times;</span>

        <!-- Modal Content (The Image) -->
        <img class="modal-content" id="img01">

    </div>

{{--    Modal show comment--}}
    <!-- Button trigger modal -->
    <!-- Modal -->
    <div class="modal fade" id="modal-comment" tabindex="-1" aria-labelledby="modal-comment" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modal-comment-title">

                    </h5>
                    <input type="text" hidden id="id-post">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <section style="background-color: #eee;">
                        <div class="container my-5 py-5">
                            <div class="row d-flex justify-content-center">
                                <div class="col-md-12 col-lg-10 col-xl-8">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="card mb-3" id="wrap-comment">

                                            </div>

                                        </div>

                                        <div class="card-footer py-3 border-0" style="background-color: #f8f9fa;">
                                            <div class="d-flex flex-start w-100">

                                                <div data-mdb-input-init class="form-outline w-100">
                                                    <textarea class="form-control" id="comment-content" rows="4"
                                                            style="background: #fff;">

                                                    </textarea>
                                                    <label class="form-label" for="textAreaExample">Message</label>
                                                </div>
                                            </div>
                                            <div class="float-end mt-2 pt-1">
                                                <button onclick="postComment()" type="button" class="btn btn-primary btn-sm">
                                                    Post comment
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('custom-js')
    <script>

        function postComment() {
            $.ajax({
                url: "{{route('postComment')}}",
                method: "POST",
                dataType: "JSON",
                data: {
                    _token: "{{csrf_token()}}",
                    post_id: $("#id-post").val(),
                    content: $("#comment-content").val()
                },
                success: function (res) {
                    $("#comment-content").val('');
                    console.log(res)
                    Swal.fire({
                        title: "Thành công !",
                        icon: "success"
                    });
                    let comment = res.data;
                    let time = new Date(comment.created_at);
                    time = time.toLocaleDateString('vi-VN');
                    let comments =
                        `<div class="card-body wrap-content-comment">
                        <div class="d-flex flex-start">
                            <div class="w-100">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h6 class="text-primary fw-bold mb-0">
                                        <span class="text-body comment">
                                        <span style="color: red" class="name-comment">
                                            ${comment.name ? comment.name : "Ẩn danh"}
                                        </span>
                                        đã comment
                                        <br> ${comment.content}
                                        </span>
                                    </h6>
                                </div>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="time-comment">
                                    ${time}
                                </span>
                            </div>
                            </div>
                        </div>
                    </div>`

                    $("#wrap-comment").prepend(comments);
                }
            })
        }

        function showComment(idPost) {
            const modalComment = $("#modal-comment");
            $.ajax({
                url: `{{route('getCommentByIdPost')}}`,
                method: "POST",
                dataType: "JSON",
                data: {
                    _token: "{{csrf_token()}}",
                    post_id: idPost
                },
                success: function (res) {
                    let comments = '';
                    $("#modal-comment-title").text(res.title_post.title)
                    $("#id-post").val(idPost);
                    res.data.forEach(comment => {
                        let time = new Date(comment.created_at);
                        let commentName = '';
                        time = time.toLocaleDateString('vi-VN');
                        if (comment.name) {
                            commentName = `<span style="color: red">${comment.name}</span>`

                        } else {
                            commentName = `<span style="color: aqua">Ẩn danh</span>`
                        }
                        comments +=
                            `<div class="card-body wrap-content-comment">
                        <div class="d-flex flex-start">
                            <div class="w-100">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h6 class="text-primary fw-bold mb-0">
                                        <span class="text-body comment">
                                            ${commentName}
                                        đã comment
                                        <br> ${comment.content}
                                        </span>
                                    </h6>
                                </div>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="time-comment">
                                    ${time}
                                </span>
                            </div>
                            </div>
                        </div>
                    </div>`
                    })
                    $("#wrap-comment").empty().append(comments);
                }
            })
            modalComment.modal('show')
        }

        function secondsToString(seconds)
        {
            var numyears = Math.floor(seconds / 31536000);
            var numdays = Math.floor((seconds % 31536000) / 86400);
            var numhours = Math.floor(((seconds % 31536000) % 86400) / 3600);
            var numminutes = Math.floor((((seconds % 31536000) % 86400) % 3600) / 60);
            var numseconds = (((seconds % 31536000) % 86400) % 3600) % 60;
            return numyears + " years " +  numdays + " days " + numhours + " hours " + numminutes + " minutes " + numseconds + " seconds";

        }

        function showImageModal(idImage) {
            // Get the modal
            var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
            var img = document.getElementById("image-post-"+idImage);
            var modalImg = document.getElementById("img01");
            modal.style.display = "block";
            modalImg.src = img.src;


// Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
            span.onclick = function() {
                modal.style.display = "none";
            }
        }
    </script>
@endpush
