@extends('admin.layout.index')
@section('title')
Sửa Người dùng
@endsection


@section('content')

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Người dùng
                            <small>sửa</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        @if(count($errors) > 0)
                            <div class="alert alert-danger">
                                @foreach($errors->all() as $err )
                                    {{ $err }}<br>
                                @endforeach
                            </div>
                        @endif

                        @if(session('thongbao'))
                            <div class="alert alert-success">{{ session('thongbao') }}</div>
                        @endif
                        <form action="admin/user/sua/{{ $user->id }}" method="POST">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="form-group">
                                <label>Tên người dùng</label>
                                <input class="form-control" name="name" value="{{ $user->name }}" placeholder="Nhập tên người dùng" />
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" name="email" value="{{ $user->email }}" disabled type="email" placeholder="Nhập email người dùng" />
                            </div>
                            <div class="form-group">
                                <label>Quyền</label>
                                @if($user->level < 1)
                                    <select class="form-control" name="level">
                                        <option disabled @if($user->level == 0) selected @endif
                                         value="0">Nhân viên</option>
                                        <option disabled @if($user->level == 1) selected @endif
                                        value="1" >Admin</option>
                                        <option disabled @if($user->level == 2) selected @endif
                                        value="2" >SuperAdmin</option>
                                    </select>
                                @else
                                    <select class="form-control" name="level">
                                        <option @if($user->level == 0) selected @endif
                                         value="0">Nhân viên</option>
                                        <option @if($user->level == 1) selected @endif
                                        value="1" >Admin</option>
                                        <option @if($user->level == 2) selected @endif
                                        value="2" >SuperAdmin</option>
                                    </select>
                                @endif
                            </div>
                            <div class="form-group">
                                <input type="checkbox" id="changePassword" name="changePassword" >
                                <label>Mật khẩu</label>
                                <input class="form-control password" disabled name="password" type="password" placeholder="Nhập mật khẩu" />
                            </div>
                            <div class="form-group">
                                <label>Nhập lại mật khẩu</label>
                                <input class="form-control password" disabled name="passwordAgain" type="password" placeholder="Nhập lại mật khẩu" />
                            </div>

                            <button type="submit" class="btn btn-default">Sửa</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

@endsection

@section('script')

    <script type="text/javascript">
        $(document).ready(function(){
            $("#changePassword").change(function(){
                if($(this).is(":checked")){
                    $(".password").removeAttr('disabled');
                }else{
                    $(".password").attr('disabled','');
                }
            });
        });
    </script>

@endsection
