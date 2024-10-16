<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-menu-color="brand" data-topbar-color="light">

<head>
    <meta charset="utf-8" />
    <title>Log In | Dashtrap - Responsive Bootstrap 5 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Myra Studio" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!-- App css -->
    <link href="{{asset('user/assets/css/style.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('user/assets/css/icons.min.css')}}" rel="stylesheet" type="text/css">
    <script src="{{asset('user/assets/js/config.js')}}"></script>
</head>

<body class="bg-primary d-flex justify-content-center align-items-center min-vh-100 p-5">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-4 col-md-5">z
            <div class="card">
                <div class="card-header">
                    <a href="">Xem Hướng Dẫn & Đặc Quyền Của ViP</a>
                </div>
                <div class="card-body p-4">

{{--                    <div class="text-center w-75 mx-auto auth-logo mb-4">--}}
{{--                        <a href="index.html" class="logo-dark">--}}
{{--                            <span><img src="assets/images/logo-dark.png" alt="" height="22"></span>--}}
{{--                        </a>--}}

{{--                        <a href="index.html" class="logo-light">--}}
{{--                            <span><img src="assets/images/logo-light.png" alt="" height="22"></span>--}}
{{--                        </a>--}}
{{--                    </div>--}}

                    <form method="POST" action="{{route('login')}}">
                        @csrf
                        <div class="form-group mb-3">
                            <label class="form-label" for="emailaddress">Email address</label>
                            <input class="form-control" name="email" type="email" id="emailaddress" required="" placeholder="Enter your email">
                        </div>

                        <div class="form-group mb-3">
                            <a href="pages-recoverpw.html" class="text-muted float-end"><small></small></a>
                            <label class="form-label" for="password">Password</label>
                            <input class="form-control" name="password" type="password" required="" id="password" placeholder="Enter your password">
                        </div>

                        <div class="form-group mb-3">
                            <div class="">
                                <input class="form-check-input" type="checkbox" id="checkbox-signin" checked>
                                <label class="form-check-label ms-2" for="checkbox-signin">Remember me</label>
                            </div>
                        </div>

                        <div class="form-group mb-0 text-center">
                            <button class="btn btn-primary w-100" type="submit"> Log In </button>
                        </div>

                    </form>
                </div> <!-- end card-body -->
            </div>
            <!-- end card -->

            <div class="row mt-3">
                <div class="col-12 text-center">
                    <p class="text-white-50">Don't have an account? <a href="{{route('register')}}" class="text-white font-weight-medium ms-1">Sign Up</a></p>
                </div> <!-- end col -->
            </div>
            <!-- end row -->

        </div> <!-- end col -->
    </div>
    <!-- end row -->
</div>

<!-- App js -->
<script src="{{asset('user/assets/js/vendor.min.js')}}"></script>
<script src="{{asset('user/assets/js/app.js')}}"></script>

</body>

</html>
