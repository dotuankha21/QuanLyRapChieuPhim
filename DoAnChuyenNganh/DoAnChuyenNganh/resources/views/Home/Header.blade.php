
<!DOCTYPE html>

<html lang="en" class="no-js">


<head>
    <!-- Basic need -->
    <title>Rạp Chiếu Tuấn Kha</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <link rel="profile" href="{{ asset('assets/Content/Client/#') }}">

    <!--Google Font-->
    <!-- Mobile specific meta -->
    <meta name=viewport content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone-no">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- CSS files -->
    <link rel="stylesheet" href="{{ asset('assets/Content/Client/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/Content/Client/css/plugins.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/fontawesome-free-6.4.2-web/css/all.min.css') }}">

    


</head>
<style>

    body {
        padding: 20px;
        color: #293C56;
    }

    .icheckbox_flat-blue, .iradio_flat-blue {
        top: -2px;
        margin-right: 5px;
    }

    .txtGray {
        color: #798594;
    }

    .bank-group {
        margin-left: 30px;
        max-width: 850px;
    }

    a, a:hover, a:visited, a:link {
        text-decoration: none !important;
        color: #293C56;
    }

        a.bank-item {
            display: inline-block;
            width: 180px;
            height: 48px;
            padding: 10px;
            border-radius: 4px;
            border: 2px solid #f1f1f1;
            position: relative;
            vertical-align: top;
            margin-right: 10px;
            margin-bottom: 15px;
            font-size: 13px;
        }

            a.bank-item .checkmark {
                display: none;
                width: 20px;
                height: 20px;
            }

            a.bank-item.selected .checkmark {
                display: block;
                position: absolute;
                top: -10px;
                right: -10px;
                margin-right: 0;
            }

            a.bank-item.selected, a.bank-item:hover {
                border: 2px solid #04BE04;
            }

            a.bank-item img {
                vertical-align: middle !important;
                display: inline-block;
                margin-right: 5px;
            }
           
 .hang-ghe {
            margin-bottom: 10px;
        }

        .ghe {
            margin-right: 5px;
            padding: 0;
            width: 90px; /* Độ rộng */
            height: 40px; /* Độ cao */
            border: 1px solid #ccc;
            font-weight: bold;
            border-radius: 5px;
            background-color: #FFf;
            cursor: pointer;
            display: inline-block; /* Thêm hiển thị inline-block cho li */
            list-style: none; /* Xóa chấm đầu dòng */
            text-align: center; /* Căn giữa nội dung */
            line-height: 30px; /* Chỉnh căn giữa dọc */
        }
        .ghe-da-co {
    background-color: #ccc;
    pointer-events: none; /* Vô hiệu hóa chức năng chọn */
    cursor: not-allowed; /* Đổi icon chuột */
}
.ghe-chon {
    background-color: #4caf50 !important;
    cursor: pointer;
}





</style>

<body>
    <!--preloading-->
    
    <!--end of preloading-->
    <!--login form popup-->
    @php
    $errorLogin = session()->pull("errorLogin")
@endphp
    <div class="login-wrapper" id="login-content" show="{{ isset($errorLogin) ? "show" : "" }}">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>Đăng Nhâp</h3>
            <form method="POST" id="loginForm" action="{{ route('login') }}">
                @csrf
                <div class="row">
                    <label for="username">
                        Tên Đăng Nhập
                        <input type="text" name="usernamelogin" id="usernamelogin" placeholder="Tên Đăng Nhập" required="required" />
                    </label>
                </div>

                <div class="row">
                    <label for="password">
                        Mật Khẩu
                        <input type="password" name="passwordlogin" id="passwordlogin" placeholder="******" required="required" />
                    </label>
                </div>
               
                <span style="color:red">{{ $errorLogin ?? "" }}</span>
                <div class="row">
                    <div class="remember">
                        <div>
                            <input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
                        </div>
                        <a href="#">Forget password ?</a>
                    </div>
                </div>
                <div class="row">
                    <button type="submit">Đăng Nhập</button>
                </div>
            </form>
            
            <div class="row">
                <p>Or via social</p>
                <div class="social-btn-2">
                    <a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
                    <a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
                </div>
            </div>
        </div>
    </div>
    <!--end of login form popup-->
    <!--signup form popup-->
    @php
    $errorRegister = session()->pull("errorRegister")
@endphp
    <div class="login-wrapper" id="signup-content" show="{{ isset($errorRegister) ? "show" : "" }}">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>Đăng Ký</h3>
            <form action="{{ route('sigin') }}" method="post" id="registerForm">
                @csrf
                <div class="row">
                    <label for="username-2">
                        Tên Đăng Nhập
                        <input type="text" name="tendangnhap" id="tendangnhap" placeholder="Tên Đăng Nhập" required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="username-2">
                        Họ Tên Người Dùng
                        <input type="text" name="hoten" id="hoten" placeholder="Họ Tên Người Dùng" required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="username-2">
                        Email
                        <input type="text" name="email" id="email" placeholder="Email" required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="username-2">
                        Số Điện Thoại
                        <input type="text" name="sdt" id="sdt" placeholder="Số điện Thoại" required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="password-2">
                        Mật Khẩu
                        <input type="password" name="matkhau" id="matkhau" placeholder="" required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="repassword-2">
                        Nhập Lại Mật Khẩu
                        <input type="password" name="rqmatkhau" id="rqmatkhau" placeholder="" required="required" />
                    </label>
                </div>
                
                
                <div class="row">
                    <button type="submit">Đăng Ký</button>
                </div>
            </form>
        </div>
    </div>
    <!--end of signup form popup-->
    <!--end of signup form popup-->
 

        <header class="ht-header">
            <div class="container">
                <nav class="navbar navbar-default navbar-custom">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header logo">
                        <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <div id="nav-icon1">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                        <a href="/"><img class="logo" src="{{ asset('assets/Content/Client/images/logo1.png') }}" alt="" width="119" height="58"></a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav flex-child-menu menu-left">
                            <li class="hidden">
                                <a href="./Home/Content/Client/#page-top"></a>
                            </li>
                            <li class="dropdown first">
                                <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                                    Phim<i class="fa fa-angle-down" aria-hidden="true"></i>
                                </a>
                                <ul class="dropdown-menu level1">
                                        <li><a href="/phim/phimdangchieu">Đang Chiếu</a></li>
                                        <li><a href="/phim/phimsapchieu">Sắp Chiếu</a></li>
                                </ul>
                            </li>
                            <li class="dropdown first">
                                <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                                    Thể Loại<i class="fa fa-angle-down" aria-hidden="true"></i>
                                </a>
                                <ul class="dropdown-menu level1 theloaiphim">
                                 
                                </ul>
                            </li>
                            <li class="dropdown first">
                                <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            Rạp Chiếu Phim <i class="fa fa-angle-down" aria-hidden="true"></i>
                                </a>
                                <ul class="dropdown-menu level1">
                                    <li><a href="./Home/Content/Client/celebritygrid01.html">celebrity grid 01</a></li>
                                   
                                    
                                  
                                </ul>
                            </li>
                            
                        </ul>
                        <ul class="nav navbar-nav flex-child-menu menu-right">
                            @if (Auth::user())

                                
                            @endif
                            @if (Auth::user())
                                   
                                   <li class=""><a href="/thongtincanhan">{{ Auth::user()->TenDangNhap }}</a></li>
                                   <li class=""><a href="{{ route('dangxuat') }}">Log out</a></li>
                               @else
                               <li class="loginLink" ><a href="./Home/Content/Client/#" id="btn-login">LOG In</a></li>
                               <li class="btn signupLink"><a href="./Home/Content/Client/#">sign up</a></li>
                               @endif
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
        
                <!-- top search form -->
                <form action="{{ route('timkiemphim') }}" method="GET">
                    <div class="top-search">
                  
                        <input style="min-height: 30px" type="text" name="tuKhoa" placeholder="Nhập từ khóa để tìm kiếm">
                        <button style="height: 46px;"><i class="fa-solid fa-magnifying-glass"></i></button>
                    </div>
                </form>
            </div>
        </header>
        {{-- @if (isset($errorLogin))
                <script >                   
                    $("#login-content").("show",true)
                </script>
            @endif --}}
    <!-- END | Header -->