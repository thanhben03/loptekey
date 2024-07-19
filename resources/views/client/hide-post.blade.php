

@extends('layouts.post')
@section('content')

    <!-- Modal -->
    <div class="modal fade" id="modal-noti" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>
                        Bạn phải là thành viên vip mới có thể like
                    </p>
                    <p>
                        Link đăng ký và hướng dẫn: <a href="">Tại đây</a>
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

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
                                <a href="https://loptephim.teebi.shop" class="nav-link">Trang Chủ</a>

                            </div>
                        </nav>
                    </div>
                    <div class="col-xl-8">
                        <div class="alert alert-success">
                            Tổng thưởng của tháng này là: 500.000đ
                        </div>
                    </div>
                    <div class="tab-content" id="nav-tabContent">
                        <div id="nav-home" class=" tab-pane fade show active col-xl-8 col-xxl-9 col-lg-8">
                            @foreach($posts as $post)
                                <div class="card w-100 shadow-xss rounded-xxl border-0 p-4 mb-3 ct-box-shadow">
                                    <div class="card-body p-0 d-flex post-content">
                                        <figure class="avatar me-3"><img src="{{$post->user_post[0]->user->avatar}}" alt="image" class="shadow-sm rounded-circle w45"></figure>
                                        <h4 class="fw-700 text-grey-900 font-xssss mt-1">{{$post->user_post[0]->user->name}}<span class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">{{$post->updated_at->diffForHumans()}}</span></h4>
                                        <a href="#" class="ms-auto" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false"><i class="ti-more-alt text-grey-900 btn-round-md bg-greylight font-xss"></i></a>
                                    </div>
                                    <div id="show-content-{{$post->id}}" class="card-body p-0 me-lg-5 position-relative">
                                        <h3><strong>{{$post->title}}</strong></h3>
                                        <p class="fw-500 text-grey-500 lh-26 font-xssss w-100">
                                            {!! $post->content !!}
{{--                                            @if(!in_array(request()->ip(), array_column($post->like->toArray(), "ip")))--}}
{{--                                                <a href="#" style="background: aqua" class="fw-600 text-primary">--}}
{{--                                                    Bạn phải ấn like để xem hết nội dung bài viết và hình ảnh !--}}
{{--                                                </a>--}}
{{--                                            @endif--}}
                                        </p>
                                        <div  class="col-12 @if(!$post->link) d-none @endif">
                                            Link:
                                            @if(!in_array(request()->ip(), array_column($post->like->toArray(), "ip")))
                                                <span style="background: aquamarine;">Bạn phải ấn like để thấy link download !</span>

                                            @endif
                                        </div>
                                    </div>
                                    <div id="show-image-post" class="card-body d-block p-0 ">
                                        <div id="show-image-{{$post->id}}" class="row ps-2 pe-2 ">
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
                                        <a href="#" class="emoji-bttn d-flex align-items-center fw-600 text-grey-900 text-dark lh-26 font-xssss me-2">

                                            <a style="color: unset" onclick="showNoti()" target="_blank">
                                                <i
                                                    class="feather-thumbs-up me-1 btn-round-xs font-md"
                                                >
                                                </i>
                                            </a>
                                            <span id="post-{{$post->id}}">{{isset($post->like) ? $post->like->count() : 0}} </span>

                                            <div class="dropdown-menu dropdown-menu-end p-4 rounded-xxl border-0 shadow-lg" aria-labelledby="dropdownMenu21">
                                                <h4 class="fw-700 font-xss text-grey-900 d-flex align-items-center">Share <i class="feather-x ms-auto font-xssss btn-round-xs bg-greylight text-grey-900 me-2"></i></h4>
                                                <div class="card-body p-0 d-flex">
                                                    <ul class="d-flex align-items-center justify-content-between mt-2">
                                                        <li class="me-1"><a href="#" class="btn-round-lg bg-facebook"><i class="font-xs ti-facebook text-white"></i></a></li>
                                                        <li class="me-1"><a href="#" class="btn-round-lg bg-twiiter"><i class="font-xs ti-twitter-alt text-white"></i></a></li>
                                                        <li class="me-1"><a href="#" class="btn-round-lg bg-linkedin"><i class="font-xs ti-linkedin text-white"></i></a></li>
                                                        <li class="me-1"><a href="#" class="btn-round-lg bg-instagram"><i class="font-xs ti-instagram text-white"></i></a></li>
                                                        <li><a href="#" class="btn-round-lg bg-pinterest"><i class="font-xs ti-pinterest text-white"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body p-0 d-flex">
                                                    <ul class="d-flex align-items-center justify-content-between mt-2">
                                                        <li class="me-1"><a href="#" class="btn-round-lg bg-tumblr"><i class="font-xs ti-tumblr text-white"></i></a></li>
                                                        <li class="me-1"><a href="#" class="btn-round-lg bg-youtube"><i class="font-xs ti-youtube text-white"></i></a></li>
                                                        <li class="me-1"><a href="#" class="btn-round-lg bg-flicker"><i class="font-xs ti-flickr text-white"></i></a></li>
                                                        <li class="me-1"><a href="#" class="btn-round-lg bg-black"><i class="font-xs ti-vimeo-alt text-white"></i></a></li>
                                                        <li><a href="#" class="btn-round-lg bg-whatsup"><i class="font-xs feather-phone text-white"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4 class="fw-700 font-xssss mt-4 text-grey-500 d-flex align-items-center mb-3">Copy Link</h4>
                                                <i class="feather-copy position-absolute right-35 mt-3 font-xs text-grey-500"></i>
                                                <input type="text" value="https://socia.be/1rGxjoJKVF0" class="bg-grey text-grey-500 font-xssss border-0 lh-32 p-2 font-xssss fw-600 rounded-3 w-100 theme-dark-bg">
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

    <!-- The Modal -->
    <div id="myModal" class="modal">

        <!-- The Close Button -->
        <span class="close">&times;</span>

        <!-- Modal Content (The Image) -->
        <img class="modal-content" id="img01">

    </div>
@endsection

@push('custom-js')
    <script>
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

        function showNoti() {
            console.log('123')
            let modal = $("#modal-noti");
                modal.modal('show')
        }
    </script>
@endpush
