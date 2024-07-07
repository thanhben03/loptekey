
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
</head>

<body>

<!-- Begin page -->
<div class="layout-wrapper">

    <!-- ========== Left Sidebar ========== -->
    <div class="main-menu">
        <!-- Brand Logo -->
        <div class="logo-box">
            <!-- Brand Logo Light -->
            <a href="index.html" class="logo-light">
                <img src="{{asset('user/assets/images/logo-light.png')}}" alt="logo" class="logo-lg" height="28">
                <img src="{{asset('user/assets/images/logo-sm.png')}}" alt="small logo" class="logo-sm" height="28">
            </a>

            <!-- Brand Logo Dark -->
            <a href="index.html" class="logo-dark">
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
                        <span class="menu-text"> Dashboards </span>
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
                            <li class="menu-item">
                                <a href="{{route('mainPost')}}" class="menu-link">
                                    <span class="menu-text">Tất cả bài đăng</span>
                                </a>
                            </li>
{{--                            <li class="menu-item">--}}
{{--                                <a href="{{route('managePost')}}" class="menu-link">--}}
{{--                                    <span class="menu-text">Lịch sử</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}

                        </ul>
                    </div>
                </li>

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuExpages" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bx-file"></i></span>--}}
{{--                        <span class="menu-text"> Extra Pages </span>--}}
{{--                        <span class="menu-arrow"></span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuExpages">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="pages-starter.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Starter</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="pages-invoice.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Invoice</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="pages-login.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Log In</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="pages-register.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Register</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="pages-recoverpw.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Recover Password</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="pages-lock-screen.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Lock Screen</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="pages-404.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Error 404</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="pages-500.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Error 500</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuLayouts" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bx-layout"></i></span>--}}
{{--                        <span class="menu-text"> Layouts </span>--}}
{{--                        <span class="badge bg-blue ms-auto">New</span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuLayouts">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="layout-horizontal.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Horizontal</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}

{{--                            <li class="menu-item">--}}
{{--                                <a href="layout-sidenav-light.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Sidenav Light</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}

{{--                            <li class="menu-item">--}}
{{--                                <a href="layout-sidenav-dark.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Sidenav Dark</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}

{{--                            <li class="menu-item">--}}
{{--                                <a href="layout-topbar-dark.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Topbar Dark</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}

{{--                <li class="menu-title">Components</li>--}}

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuComponentsui" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bx-cookie"></i></span>--}}
{{--                        <span class="menu-text"> UI Elements </span>--}}
{{--                        <span class="menu-arrow"></span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuComponentsui">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-alerts.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Alerts</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-buttons.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Buttons</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-cards.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Cards</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-carousel.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Carousel</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-dropdowns.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Dropdowns</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-video.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Embed Video</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-general.html" class="menu-link">--}}
{{--                                    <span class="menu-text">General UI</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-grid.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Grid</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-images.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Images</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-list-group.html" class="menu-link">--}}
{{--                                    <span class="menu-text">List Group</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-modals.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Modals</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-offcanvas.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Offcanvas</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-placeholders.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Placeholders</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-progress.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Progress</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-spinners.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Spinners</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-tabs-accordions.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Tabs & Accordions</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-tooltips-popovers.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Tooltips & Popovers</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="ui-typography.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Typography</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuExtendedui" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bx-briefcase-alt-2"></i></span>--}}
{{--                        <span class="menu-text"> Components </span>--}}
{{--                        <span class="badge bg-info ms-auto">Hot</span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuExtendedui">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="components-range-slider.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Range Slider</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="components-sweet-alert.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Sweet Alert</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="components-loading-buttons.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Loading Buttons</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuIcons" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bx-aperture"></i></span>--}}
{{--                        <span class="menu-text"> Icons </span>--}}
{{--                        <span class="menu-arrow"></span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuIcons">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="icons-feather.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Feather Icons</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="icons-mdi.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Material Design Icons</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="icons-dripicons.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Dripicons</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuForms" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bxs-eraser"></i></span>--}}
{{--                        <span class="menu-text"> Forms </span>--}}
{{--                        <span class="menu-arrow"></span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuForms">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="forms-elements.html" class="menu-link">--}}
{{--                                    <span class="menu-text">General Elements</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="forms-advanced.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Advanced</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="forms-validation.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Validation</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="forms-quilljs.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Editor</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="forms-file-uploads.html" class="menu-link">--}}
{{--                                    <span class="menu-text">File Uploads</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuTables" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bx-table"></i></span>--}}
{{--                        <span class="menu-text"> Tables </span>--}}
{{--                        <span class="menu-arrow"></span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuTables">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="tables-basic.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Basic Tables</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="tables-datatables.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Data Tables</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuCharts" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bx-doughnut-chart"></i></span>--}}
{{--                        <span class="menu-text"> Charts </span>--}}
{{--                        <span class="menu-arrow"></span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuCharts">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="charts-apex.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Apex Charts</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="charts-morris.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Morris Charts</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="charts-chartjs.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Chartjs Charts</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuMaps" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bx-map-alt"></i></span>--}}
{{--                        <span class="menu-text"> Maps </span>--}}
{{--                        <span class="menu-arrow"></span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuMaps">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="maps-google.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Google Maps</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="maps-vector.html" class="menu-link">--}}
{{--                                    <span class="menu-text">Vector Maps</span>--}}
{{--                                </a>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}

{{--                <li class="menu-item">--}}
{{--                    <a href="#menuMultilevel" data-bs-toggle="collapse" class="menu-link waves-effect waves-light">--}}
{{--                        <span class="menu-icon"><i class="bx bx-share-alt"></i></span>--}}
{{--                        <span class="menu-text"> Multi Level </span>--}}
{{--                        <span class="menu-arrow"></span>--}}
{{--                    </a>--}}
{{--                    <div class="collapse" id="menuMultilevel">--}}
{{--                        <ul class="sub-menu">--}}
{{--                            <li class="menu-item">--}}
{{--                                <a href="#menuMultilevel2" data-bs-toggle="collapse"--}}
{{--                                   class="menu-link waves-effect waves-light">--}}
{{--                                    <span class="menu-text"> Second Level </span>--}}
{{--                                    <span class="menu-arrow"></span>--}}
{{--                                </a>--}}
{{--                                <div class="collapse" id="menuMultilevel2">--}}
{{--                                    <ul class="sub-menu">--}}
{{--                                        <li class="menu-item">--}}
{{--                                            <a href="javascript: void(0);" class="menu-link">--}}
{{--                                                <span class="menu-text">Item 1</span>--}}
{{--                                            </a>--}}
{{--                                        </li>--}}
{{--                                        <li class="menu-item">--}}
{{--                                            <a href="javascript: void(0);" class="menu-link">--}}
{{--                                                <span class="menu-text">Item 2</span>--}}
{{--                                            </a>--}}
{{--                                        </li>--}}
{{--                                    </ul>--}}
{{--                                </div>--}}
{{--                            </li>--}}

{{--                            <li class="menu-item">--}}
{{--                                <a href="#menuMultilevel3" data-bs-toggle="collapse"--}}
{{--                                   class="menu-link waves-effect waves-light">--}}
{{--                                    <span class="menu-text">Third Level</span>--}}
{{--                                    <span class="menu-arrow"></span>--}}
{{--                                </a>--}}
{{--                                <div class="collapse" id="menuMultilevel3">--}}
{{--                                    <ul class="sub-menu">--}}
{{--                                        <li class="menu-item">--}}
{{--                                            <a href="javascript: void(0);" class="menu-link">--}}
{{--                                                <span class="menu-text">Item 1</span>--}}
{{--                                            </a>--}}
{{--                                        </li>--}}
{{--                                        <li class="menu-item">--}}
{{--                                            <a href="#menuMultilevel4" data-bs-toggle="collapse"--}}
{{--                                               class="menu-link waves-effect waves-light">--}}
{{--                                                <span class="menu-text">Item 2</span>--}}
{{--                                                <span class="menu-arrow"></span>--}}
{{--                                            </a>--}}
{{--                                            <div class="collapse" id="menuMultilevel4">--}}
{{--                                                <ul class="sub-menu">--}}
{{--                                                    <li class="menu-item">--}}
{{--                                                        <a href="javascript: void(0);" class="menu-link">--}}
{{--                                                            <span class="menu-text">Item 1</span>--}}
{{--                                                        </a>--}}
{{--                                                    </li>--}}
{{--                                                    <li class="menu-item">--}}
{{--                                                        <a href="javascript: void(0);" class="menu-link">--}}
{{--                                                            <span class="menu-text">Item 2</span>--}}
{{--                                                        </a>--}}
{{--                                                    </li>--}}
{{--                                                </ul>--}}
{{--                                            </div>--}}
{{--                                        </li>--}}
{{--                                    </ul>--}}
{{--                                </div>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </li>--}}
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
                        <a href="index.html" class="logo-light">
                            <img src="assets/images/logo-light.png" alt="logo" class="logo-lg" height="22">
                            <img src="assets/images/logo-sm.png" alt="small logo" class="logo-sm" height="22">
                        </a>

                        <!-- Brand Logo Dark -->
                        <a href="index.html" class="logo-dark">
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
                            <img src="{{auth()->user()->avatar}}" alt="user-image" class="rounded-circle">
                            <span class="ms-1 d-none d-md-inline-block">
                                {{auth()->user()->name}}
                                <i class="mdi mdi-chevron-down"></i>
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
