@extends('Admin.Home.index')
@section('content')


<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-12 p-md-0">
                <div class="welcome-text">
                    <center><h4> Trang Sửa Màn Hình</h4></center>
                  
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
                                
                                <input type="hidden" id="idMH" value="{{ $manhinh[0]->idMH }}" name="idMH" placeholder="Mã Màn Hình">
                                <div class="form-group">
                                    <label class="col-md-2" for="TenPhim">Tên Màn Hình</label>
                                    <div class="col-md-10">
                                        <div class="">
                                            <input required="required" class="form-control text-box single-line" type="text" id="TenMH" value="{{ $manhinh[0]->TenMH }}" name="TenMH" placeholder="Tên Màn Hinh">
                                        </div>
                                    </div>
                                </div>
                            
                                <button class="btn btn-primary" type="submit">Sửa</button>
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
                url: "{{ route('update_manhinh') }}",
                type: 'POST',
                data: formData,
                processData: false, // Ngăn xử lý dữ liệu gửi đi
                contentType: false, // Không thiết lập kiểu dữ liệu
                success: function(res) {
                    console.log(res);
                    alert(res.message);
                    window.location.href = document.referrer;
                },error:function(er)
                    {
                        let err=er.responseJSON;
                        $.each(err.errors,function(index,value){
                            $('.errorMessage').append('<span class="text-danger">'+value+'</span><br/>  ')
                        });
                    }
            });
        });
    });
</script>
@endsection