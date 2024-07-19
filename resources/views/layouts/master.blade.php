<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-menu-color="brand" data-topbar-color="light">

<head>
    <meta charset="utf-8" />
    <title>Lopte Key - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Myra Studio" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="{{asset('user/assets/images/favicon.ico')}}">

    <link href="{{asset('user/assets/libs/morris.js/morris.css')}}" rel="stylesheet" type="text/css" />

    <!-- App css -->
    <link href="{{asset('user/assets/css/style.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('user/assets/css/icons.min.css')}}" rel="stylesheet" type="text/css">
    <script src="{{asset('user/assets/js/config.js')}}"></script>
    <link href="{{asset('user/assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('user/assets/libs/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('user/assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('user/assets/libs/datatables.net-select-bs5/css//select.bootstrap5.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('user/assets/libs/select2/css/select2.min.css')}}" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
    <style>
        .icon-delete-item-link {
            position: absolute;
            font-size: 31px;
            top: -18px;
            right: -9px;
            color: red;
        }
        .my-icon {
            display: none;
            color: yellow;
            background: red;
            padding: 3px;
            border-radius: 50%;
            font-size: 10px;
            position: absolute;
            right: -5px;
        }
    </style>
</head>

<body>
<!-- Begin page -->
<div class="layout-wrapper">

    <!-- ========== Left Sidebar ========== -->
    <div class="main-menu">
        <!-- Brand Logo -->
        <div class="logo-box">
            <!-- Brand Logo Light -->
            <a href="{{route('home')}}" class="logo-light">
                <img src="{{asset('user/assets/images/logo-light.png')}}" alt="logo" class="logo-lg" height="28">
                <img src="{{asset('user/assets/images/logo-sm.png')}}" alt="small logo" class="logo-sm" height="28">
            </a>

            <!-- Brand Logo Dark -->
            <a href="{{route('home')}}" class="logo-dark">
                <img src="{{asset('user/assets/images/logo-dark.png')}}" alt="dark logo" class="logo-lg" height="28">
                <img src="{{asset('user/assets/images/logo-sm.png')}}" alt="small logo" class="logo-sm" height="28">
            </a>
        </div>

        <!--- Menu -->
        <div data-simplebar>
            <ul class="app-menu">

                <li class="menu-title">Trang chủ</li>

                <li class="menu-item">
                    <a href="{{route('home')}}" class="menu-link waves-effect waves-light">
                        <span class="menu-icon"><i class="bx bx-home-smile"></i></span>
                        <span class="menu-text"> Mua Key </span>
                        <span class="badge bg-primary rounded ms-auto">01</span>
                    </a>
                </li>

                <li class="menu-title">Menu</li>

                <li class="menu-item">
                    <a href="{{route('charge')}}" class="menu-link waves-effect waves-light">
                        <span class="menu-icon"><i class="bx bxs-bank"></i></span>
                        <span class="menu-text">Nạp tiền</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{route('withdraw')}}" class="menu-link waves-effect waves-light">
                        <span class="menu-icon"><i class="bx bxs-bank"></i></span>
                        <span class="menu-text">Rút tiền</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{route('reward')}}" class="menu-link waves-effect waves-light">
                        <span class="menu-icon"><i class="fas fa-th-large"></i></span>
                        <span class="menu-text">Tổng thưởng</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="#menuIcons" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">
                        <span class="menu-icon"><i class="bx bx-book"></i></span>
                        <span class="menu-text"> Bài đăng </span>
                        <span class="menu-arrow"></span>
                    </a>
                    <div class="collapse" id="menuIcons">
                        <ul class="sub-menu">
                            <li class="menu-item">
                                <a href="{{route('post')}}" class="menu-link">
                                    <span class="menu-text">Đăng bài</span>
                                </a>
                            </li>
{{--                            <li class="menu-item">--}}
{{--                                <a href="{{route('mainPost')}}" class="menu-link">--}}
{{--                                    <span class="menu-text">Tất cả bài đăng</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}

                        </ul>
                    </div>
                </li>

            </ul>
        </div>
    </div>



    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="page-content">

        <!-- ========== Topbar Start ========== -->
        <div class="navbar-custom">
            <div class="topbar">
                <div class="topbar-menu d-flex align-items-center gap-lg-2 gap-1">

                    <!-- Brand Logo -->
                    <div class="logo-box">
                        <!-- Brand Logo Light -->
                        <a href="{{route('home')}}" class="logo-light">
                            <img src="assets/images/logo-light.png" alt="logo" class="logo-lg" height="22">
                            <img src="assets/images/logo-sm.png" alt="small logo" class="logo-sm" height="22">
                        </a>

                        <!-- Brand Logo Dark -->
                        <a href="{{route('home')}}" class="logo-dark">
                            <img src="{{asset('user/assets/images/logo-dark.png')}}" alt="dark logo" class="logo-lg" height="22">
                            <img src="{{asset('user/assets/images/logo-sm.png')}}" alt="small logo" class="logo-sm" height="22">
                        </a>
                    </div>

                    <!-- Sidebar Menu Toggle Button -->
                    <button class="button-toggle-menu">
                        <i class="mdi mdi-menu"></i>
                    </button>
                </div>

                <ul class="topbar-menu d-flex align-items-center gap-4">
                    <li>
                        <span class="money">Số dư: </span>
                        <span class="text-success">
                            {{\Illuminate\Support\Number::currency(auth()->user()->money, 'VND')}}
                        </span>
                    </li>

                    <li class="nav-link" id="theme-mode">
                        <i class="bx bx-moon font-size-24"></i>
                    </li>

                    <li class="dropdown">
                        <a class="nav-link dropdown-toggle nav-user me-0 waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            <span class="position-relative">
                                <img src="{{auth()->user()->avatar}}" alt="user-image" class="rounded-circle">
                                <i @if($isTick) style="display: inline-block" @endif  class="fas fa-check my-icon"></i>
                            </span>
                            <span class="ms-1 d-none d-md-inline-block">
                                {{auth()->user()->name}}

                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end profile-dropdown ">

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <a style="color: #747A80;
                                        margin-left: 20px;" href="{{route('profile.edit')}}">Thông tin</a>
                            </a>

                            <div class="dropdown-divider"></div>

                            <!-- item-->
                                <i class="fe-log-out"></i>
                                <form method="POST" action="{{ route('logout') }}">
                                    @csrf
                                    <a href="{{route('logout')}}" class="dropdown-item notify-item"
                                                     onclick="event.preventDefault();
                                                this.closest('form').submit();">
                                        {{ __('Log Out') }}
                                    </a>
                                </form>

                        </div>
                    </li>

                </ul>
            </div>
        </div>
        <!-- ========== Topbar End ========== -->

        <div class="px-3">

            <!-- Start Content-->
            @yield('content')

        </div> <!-- content -->

        <!-- Footer Start -->
{{--        <footer class="footer">--}}
{{--            <div class="container-fluid">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-md-6">--}}
{{--                        <div><script>document.write(new Date().getFullYear())</script> © Dashtrap</div>--}}
{{--                    </div>--}}
{{--                    <div class="col-md-6">--}}
{{--                        <div class="d-none d-md-flex gap-4 align-item-center justify-content-md-end">--}}
{{--                            <p class="mb-0">Design & Develop by <a href="https://myrathemes.com/" target="_blank">MyraStudio</a> </p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </footer>--}}
        <!-- end Footer -->

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->

</div>
<!-- END wrapper -->

<!-- App js -->
<script src="{{asset('user/assets/js/vendor.min.js')}}"></script>
<script src="{{asset('user/assets/js/app.j')}}s"></script>

<!-- Knob charts js -->
<script src="{{asset('user/assets/libs/jquery-knob/jquery.knob.min.js')}}"></script>

<!-- Sparkline Js-->
<script src="{{asset('user/assets/libs/jquery-sparkline/jquery.sparkline.min.js')}}"></script>

<script src="{{asset('user/assets/libs/morris.js/morris.min.js')}}"></script>

<script src="{{asset('user/assets/libs/raphael/raphael.min.js')}}"></script>

<!-- Dashboard init-->
<script src="{{asset('user/assets/js/pages/dashboard.js')}}"></script>

<script src="{{asset('user/assets/libs/datatables.net/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('user/assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js')}}"></script>
<script src="{{asset('user/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('user/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
<script src="{{asset('user/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>
<script src="{{asset('user/assets/libs/datatables.net-select/js/dataTables.select.min.js')}}"></script>
<link href="{{asset('user/assets/libs/multiselect/css/multi-select.css')}}" rel="stylesheet" type="text/css" />
<script src="{{asset('user/assets/libs/select2/js/select2.min.js')}}"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link href="https://cdn.jsdelivr.net/npm/suneditor@latest/dist/css/suneditor.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/suneditor@latest/dist/suneditor.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/suneditor@latest/src/lang/ko.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
@stack('custom-js')
<script>

    function toProfile(link) {
        window.location.href = link
    }
</script>
</body>

</html>
