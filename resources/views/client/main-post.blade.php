

@extends('layouts.post')
@section('content')
    <div class="main-content right-chat-active" style="background-image: url({{asset('images/background.jpg')}})">

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
                            </div>
                        </nav>
                    </div>
                    <div class="col-xl-8">
                        <div class="alert alert-success">
                            Tổng thưởng của tháng này là: 500.000đ
                        </div>
                    </div>
                    <div class="tab-content" id="nav-tabContent">
                        <div id="nav-home" class="tab-pane fade show active col-xl-8 col-xxl-9 col-lg-8">
                            @foreach($posts as $post)
                                <div class="card w-100 shadow-xss rounded-xxl border-0 p-4 mb-3 ct-box-shadow">
                                    <div class="card-body p-0 d-flex">
                                        <figure class="avatar me-3"><img src="{{$post->user_post[0]->user->avatar}}" alt="image" class="shadow-sm rounded-circle w45"></figure>
                                        <h4 class="fw-700 text-grey-900 font-xssss mt-1">{{$post->user_post[0]->user->name}}<span class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">{{$post->updated_at->diffForHumans()}}</span></h4>
                                        <a href="#" class="ms-auto" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false"><i class="ti-more-alt text-grey-900 btn-round-md bg-greylight font-xss"></i></a>
                                    </div>
                                    <div class="card-body p-0 me-lg-5">
                                        <h3><strong>{{$post->title}}</strong></h3>
                                        <p class="fw-500 text-grey-500 lh-26 font-xssss w-100">
                                            {!! $post->content !!}
                                            {{--                                        <a href="#" class="fw-600 text-primary ms-2">See more</a>--}}
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
                                            @if(count($post->like) >= 1)
                                                @foreach($post->like as $like)
                                                    @if($like->ip == request()->ip())
                                                        <i

                                                            class="feather-thumbs-up me-1 btn-round-xs font-md"
                                                            style="color: chartreuse"

                                                        >
                                                        </i>
                                                        @php
                                                            break;
                                                        @endphp
                                                    @endif
                                                @endforeach
                                            @else
                                                <i
                                                    onclick="likePost({{$post->id}})"
                                                    class="feather-thumbs-up me-1 btn-round-xs font-md"
                                                    id="btn-like-{{$post->id}}"

                                                >
                                                </i>
                                            @endif
                                            <span id="post-{{$post->id}}">{{isset($post->like) ? $post->like->count() : 0}} </span>

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
    </script>
@endpush
