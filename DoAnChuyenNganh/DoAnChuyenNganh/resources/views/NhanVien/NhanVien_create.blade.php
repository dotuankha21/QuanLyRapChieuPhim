@extends('Admin.Home.index')
@section('content')


<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-12 p-md-0">
                <div class="welcome-text">
                    <center><h4> Trang Thêm Nhân Viên</h4></center>
                  
                </div>
            </div>
            
        </div>
        <!-- row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                   
                    <div class="card-body">
                        <div class="form-validation">
                            
                            <form id="create-phim-form" method="POST" action="" enctype="multipart/form-data">
                                @csrf
                                
                                <input type="hidden" id="" value="" name="idKH" placeholder="Mã Khách Hàng">
                                <br>
                                <center><h3>Thông Tin Tài Khoản Nhân Viên</h3></center>
                                <div class="form-group">
                                    <label class="col-md-2" for="">Tên Đăng Nhập </label>
                                    <div class="col-md-10">
                                        <div class="">
                                            <input class="form-control text-box single-line" type="text" id="TenDangNhap" value="" name="TenDangNhap" placeholder="Tên Đăng Nhập">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2" for="">Mật Khẩu </label>
                                    <div class="col-md-10">
                                        <div class="">
                                            <input class="form-control text-box single-line" type="password" id="MatKhau" value="" name="MatKhau" placeholder="Mật Khẩu">
                                        </div>
                                    </div>
                                </div>
                              
                                <br>
                                <center><h3>Thông Tin Nhân Viên</h3></center>
                                <div class="form-group">
                                    <label class="col-md-2" for="">Tên Nhân Viên </label>
                                    <div class="col-md-10">
                                        <div class="">
                                            <input required="required" class="form-control text-box single-line" type="text" id="HoTen" value="" name="HoTen" placeholder="Tên  Nhân Viên">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2" for="TenTheLoai">Ngày Sinh</label>
                                    <div class="col-md-10">
                                        <div class="">
                                            <input required="required" class="form-control text-box single-line" type="date" id="NgaySinh" value="" name="NgaySinh" placeholder="Ngày Sinh">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2" for="TenTheLoai">Số Điện Thoại</label>
                                    <div class="col-md-10">
                                        <div class="">
                                            <input required="required" class="form-control text-box single-line" type="text" id="SDT" value="" name="SDT" placeholder="Số Điện Thoại">
                                        </div>
                                    </div>
                                    <div class="errorsdt"></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2" for="TenTheLoai">Địa Chỉ</label>
                                    <div class="col-md-10">
                                        <div class="">
                                            <input required="required" class="form-control text-box single-line" type="text" id="DiaChi" value="" name="DiaChi" placeholder="Địa Chỉ">
                                        </div>
                                    </div>
                                  
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-2" for="TenTheLoai">Email</label>
                                    <div class="col-md-10">
                                        <div class="">
                                            <input required="required" class="form-control text-box single-line" type="text" id="Email" value="" name="Email" placeholder="Nhập Email">
                                        </div>
                                    </div>
                                    <div class="erroremail">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2" for="TenPhim">Chọn Chức Vụ</label>
                                    <div class="col-md-10">
                                        <select class="form-control" id="mySelect" name="idChucVu">
                                            <option value="0">___Chọn Chức Vụ___</option>
                                            @foreach ($chucvu as $item)
                                                <option value="{{ $item->idCV }}">{{ $item->TenChucVu }}</option>
                                            @endforeach
                                        </select>
                                    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2" for="TenTheLoai">Giới Tính</label>
                                    <div class="col-md-10">
                                        <div class="">
                                            <label>
                                                <input type="radio" name="gioitinh" value="Nam">
                                                Nam
                                              </label>
                                              <label>
                                                <input type="radio" name="gioitinh" value="Nu">
                                                Nữ
                                              </label>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-primary" type="submit">Thêm</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $('#create-phim-form').on('submit', function(event) {
            event.preventDefault();
            let formData = new FormData(this);

            $.ajax({
                url: "{{ route('create_nhanvien') }}",
                type: 'POST',
                data: formData,
                processData: false, // Ngăn xử lý dữ liệu gửi đi
                contentType: false, // Không thiết lập kiểu dữ liệu
                success: function(res) {
                    console.log(res);
                    alert(res.message);
                    window.location.href = document.referrer;
                },error: function(er) {
    let err = er.responseJSON;
    if (err.errors && err.errors.SDT) {
        $('.errorsdt').html('<span class="text-danger">' + err.errors.SDT + '</span>');
    }
    if (err.errors && err.errors.Email) {
        $('.erroremail').html('<span class="text-danger">' + err.errors.Email + '</span>');
    }
}

            });
        });
    });
</script>
@endsection