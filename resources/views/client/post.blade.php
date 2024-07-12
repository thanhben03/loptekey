@extends('layouts.master')
@section('content')
    <div class="container-fluid">
        @if(\Illuminate\Support\Facades\Session::has('msg'))
            <input hidden type="text" id="msg" value="{{\Illuminate\Support\Facades\Session::get('msg')}}">
        @endif
        <!-- start page title -->
        <div class="py-3 py-lg-4">
            <div class="row">
                <div class="col-lg-6">
                    <div class="alert alert-success">Chúc bạn một ngày tốt lành !</div>
                </div>

            </div>
        </div>
        <!-- end page title -->
        <form role="form" method="POST" action="{{route('posts.store')}}" id="form-post">

            <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="header-title mb-3">Tạo Bài Đăng Mới</h4>

                                @csrf
                                <div class="mb-2">
                                    <label for="exampleInputEmail1"  class="form-label">Title</label>
                                    <input type="text" name="title" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                </div>
                                <div class="mb-2 w-100">
                                    <label for="exampleInputPassword1" class="form-label">Nội dung</label>
                                    <textarea onchange="saveContent()" rows="10" type="password" class="form-control" id="sample-mod"></textarea>
                                    <input type="text" style="display: none" name="content" id="content">
                                </div>

                                <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-lg-6">
                    <!--
                    <div class="card">
                        <div class="card-body">
                            <h4 class="header-title mb-3">Tag</h4>
                            <div class="row mb-3">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Game/Phim</label>
                                <div class="col-sm-9">
                                    <select onchange="test()" id="choose-tag" name="tag_name" >
                                        @foreach($games as $game)
                                            <option value="{{$game->name}}">{{$game->name}}</option>
                                        @endforeach
                                        @foreach($movies as $movie)
                                            <option value="{{$movie->title}}">{{$movie->title}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    -->
                    <div class="card">
                        <div class="card-body">
                            <h4 class="header-title mb-3">Link</h4>
                            <span class="btn btn-primary mb-2" onclick="addLink()">
                                Thêm
                            </span>
                            <div class="row mb-3 wrap-link-download">
                                <div class="item-link-download d-flex" id="item-link-1">
                                    <div class="col-md-6 d-inline-block">
                                        <input type="text" name="name_link[]" class="form-control" placeholder="Văn bản hiển thị">
                                    </div>
                                    <div class="col-md-6 d-inline-block position-relative">
                                        <input type="text" name="link[]" class="form-control" placeholder="Liên kết tải xuống">
                                        <i class="fas fa-minus-circle icon-delete-item-link" onclick="deleteLink(1)"></i>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h4 class="header-title mb-3">Lưu ý</h4>
                            <div class="row mb-3">
                                <div class="alert alert-warning">
                                    - Nhớ ấn save nội dung trước khi đăng bài, nội dung không được vượt quá 1000 ký tự
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </form>
            @include('client.history-post')

    </div> <!-- container -->
@endsection

@push('custom-js')
    <script>
        let index = 2;
        $(document).ready(function() {
            $("#history-post-datatable").DataTable({
                order: [
                    [2, 'desc']
                ]
            })
            let msg = $("#msg").val()
            console.log(msg)
            if (msg) {
                Toastify({
                    text: $("#msg").val(),
                    duration: 3000,
                    destination: "https://github.com/apvarun/toastify-js",
                    newWindow: true,
                    close: true,
                    gravity: "top", // `top` or `bottom`
                    position: "right", // `left`, `center` or `right`
                    stopOnFocus: true, // Prevents dismissing of toast on hover
                    style: {
                        background: "linear-gradient(to right, #00b09b, #96c93d)",
                    },
                    onClick: function(){} // Callback after click
                }).showToast();
            }
            $('#choose-tag').select2();
            document.querySelector(".se-wrapper-inner.se-wrapper-wysiwyg.sun-editor-editable").addEventListener("change", saveContent);
            // $(".se-wrapper-inner")[0].change(function(){
            //
            //     saveContent();
            // });
            let formPost = $("#form-post");
            formPost.submit(function (e) {
                let content = $('#content');
                if (content.val() == '') {
                    alert('Vui lòng ấn save để lưu nội dung bài viết');
                    e.preventDefault();

                }
                if (content.val().length > 500) {
                    alert('Nội dung không được vượt quá 500 ký tự')
                    e.preventDefault()

                }
            })
        });


        const editor = SUNEDITOR.create((document.getElementById('sample-mod') || 'sample'),{
            lang: SUNEDITOR_LANG['en'],

            buttonList: [
                ['undo', 'redo'],
                ['font', 'fontSize', 'formatBlock'],
                ['paragraphStyle', 'blockquote'],
                ['bold', 'underline', 'italic', 'strike', 'subscript', 'superscript'],
                ['fontColor', 'hiliteColor', 'textStyle'],
                ['removeFormat'],
                '/', // Line break
                ['outdent', 'indent'],
                ['align', 'horizontalRule', 'list', 'lineHeight'],
                ['table', 'link', 'image', 'video', 'audio' /** ,'math' */], // You must add the 'katex' library at options to use the 'math' plugin.
                /** ['imageGallery'] */ // You must add the "imageGalleryUrl".
                ['fullScreen', 'showBlocks', 'codeView'],
                ['preview', 'print'],
                ['save', 'template'],
                /** ['dir', 'dir_ltr', 'dir_rtl'] */ // "dir": Toggle text direction, "dir_ltr": Right to Left, "dir_rtl": Left to Right
            ],
            defaultStyle: 'font-family:arial',
            width: '100%',
            callBackSave: function (contents, isChanged) {
                $("#content").val(contents)
            }
        });

        function saveContent() {
            console.log('save')
            // console.log(editor.getContents())
            document.getElementById('content').value = editor.getContents();

        }

        function addLink() {
            let html = `<div class="item-link-download d-flex" style="margin-top: 25px" id="item-link-${index}">
                                    <div class="col-md-6 d-inline-block">
                                        <input type="text" name="name_link[]" class="form-control" placeholder="Văn bản hiển thị">
                                    </div>
                                    <div class="col-md-6 d-inline-block position-relative">
                                        <input type="text" name="link[]" class="form-control" placeholder="Liên kết tải xuống">
                                        <i class="fas fa-minus-circle icon-delete-item-link" onclick="deleteLink(${index})"></i>

                                    </div>
                                </div>`;
            $(".wrap-link-download").append(html);
            index++;
        }

        function deleteLink(index) {
            $("#item-link-" + index).remove();
        }

        async function buyKey() {
            const confrim = await Swal.fire({
                title: "Nhắc nhở !",
                text: "Bạn có chắc chắn mua key này không ?",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "OK"
            })
            if (confrim.isConfirmed) {
                await $.ajax({
                    url: "{{route('buyKey')}}",
                    dataType: "json",
                    method: "POST",
                    data: {
                        "_token": "{{ csrf_token() }}",
                        "key_id": $("#key_type").val(),
                    },
                    success: function (res) {
                        Swal.fire({
                            title: res.data.msg,
                            html: `Bạn đã mua thành công ${res.data.name_type} : <b>${res.data.name}</b>`,
                            icon: "success"
                        });
                    },
                    error: function (xhr, status, error) {
                        console.log(error);
                        Swal.fire({
                            title: "Error !",
                            html: `${xhr.responseJSON.msg}`,
                            icon: "error"
                        });
                    }
                })
            }
        }
    </script>
@endpush
