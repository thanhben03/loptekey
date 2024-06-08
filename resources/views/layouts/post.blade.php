
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sociala - Social Network App HTML Template </title>

    <link rel="stylesheet" href="{{asset('post/css/themify-icons.css')}}">
    <link rel="stylesheet" href="{{asset('post/css/feather.css')}}">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="{{asset('post/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('post/css/emoji.css')}}">

    <link rel="stylesheet" href="{{asset('post/css/lightbox.css')}}">
{{--    <link rel="stylesheet" href="{{asset('post/css/bootstrap.min.css')}}">--}}

</head>

<body class="color-theme-blue mont-font">

<div class="preloader"></div>


<div class="main-wrapper">
    <!-- main content -->
    @yield('content')
    <!-- main content -->



</div>







<script src="{{asset('post/js/plugin.js')}}"></script>

<script src="{{asset('post/js/lightbox.js')}}"></script>
<script src="{{asset('post/js/scripts.js')}}"></script>
<script src="{{asset('post/js/moment.js')}}"></script>
<script src="{{asset('post/js/moment-with-locales.js')}}"></script>
{{--<script src="{{asset('post/js/bootstrap.bundle.min.js')}}"></script>--}}
<script>

    function likePost(idPost) {
        let post = $(`#post-${idPost}`);
        let totalLike = parseInt(post.text());

        $.ajax({
            url: "{{route('likePost')}}",
            method: "POST",
            dataType: "JSON",
            data: {
                _token: "{{csrf_token()}}",
                post_id: idPost
            },
            success: function () {
                post.text(++totalLike);
                let btnLike = $(`#btn-like-${idPost}`);
                btnLike.attr('style', 'color: chartreuse')
            },
            error: function () {
                alert('Bạn chỉ có thể like 1 lần !')
            }
        })
    }
</script>


</body>

</html>
