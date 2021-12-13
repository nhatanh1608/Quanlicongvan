	@extends('layout.index')
	@section('title')
	Tìm kiếm
	@endsection

	@section('content')
	<!-- Content -->
	<div class="col-md-9">

		<div class="panel-heading" style="background-color:#337AB7; color:white;" >
			<h2 style="margin-top:0px; margin-bottom:0px;">Tìm kiếm:  <span style="color:#bc032b;">{{ $tukhoa }}</span></h2>
		</div>

		<?php
function doimau($str, $tukhoa) {
	return str_replace($tukhoa, "<span style='color:red'>$tukhoa</span>", $str);
}
?>

		<table class="table table-striped table-bordered table-hover" id="dataTables-example">

			<thead>
				<tr align="center">
					<th>STT</th>
					<th>Số hiệu</th>
					<th>Ngày ký</th>
					<th>Trích yếu nội dung</th>
					@if(Auth::user())
					<th>Loại hình công văn</th>
					@endif
					<th>Cơ quan ban hành</th>
					<th>Hình thức văn bản</th>
					<th>Lĩnh vực</th>
					<th>Loại văn bản</th>
					<th>Tải về</th>
				</tr>
			</thead>
			<tbody>


				{{-- Kiểm tra dữ liệu của bảng nếu k có thì in ra Bảng hiện có dữ liệu --}}
				@if(count($congvan) == 0)
				<tr><span style="font-size: 25px">Không tìm thấy công văn với từ khoá: "{ 1tukhoa }"</span></tr>
				@endif

				<?php
//Cách xuất STT
$i = 1;
if (isset($_GET['page']) && $_GET['page'] > 1) {
	$i = (($_GET['page'] - 1) * 10) + 1;
}

?>
				@foreach($congvan as $cv)
				@if(Auth::user())
				<tr class="odd gradeX" align="center">
					<td>{{ $i }}</td>
					<td>{!! doimau($cv->sohieu , $tukhoa) !!}</td>
					<td><a href="chitiet/{{ $cv->id }}">{!! doimau($cv->trichyeunoidung, $tukhoa) !!}</a></td>
					<td>{{ $cv->loaihinhcongvan->name }}</td>
					<td>{{ $cv->coquanbanhanh->name }}</td>
					<td>{{ $cv->hinhthucvanban->name }}</td>
					<td>{{ $cv->linhvuc->name }}</td>
					<td>{!! $cv->loaivanban, $tukhoa !!}</td>
					<td><a href="upload/{{ $cv->tentaptindinhkem }}" target="_blank"><div  class="glyphicon glyphicon-download-alt"></div></a></td>
					<?php $i++;?>
				</tr>
				@else
				<tr class="odd gradeX" align="center">
					<td>{{ $i }}</td>
					<td>{!! doimau($cv->sohieu , $tukhoa ) !!}</td>
					<td>{{ Carbon\Carbon::parse($cv->ngayky)->format('d/m/Y') }}</td>
					<td><a href="chitiet/{{ $cv->id }}">{!! doimau($cv->trichyeunoidung, $tukhoa) !!}</a></td>
					<td>{{ $cv->coquanbanhanh->name }}</td>
					<td>{{ $cv->hinhthucvanban->name }}</td>
					<td>{{ $cv->linhvuc->name }}</td>
					<td>{!! $cv->loaivanban, $tukhoa !!}</td>
					<td><a href="upload/{{ $cv->tentaptindinhkem }}" target="_blank"><div  class="glyphicon glyphicon-download-alt"></div></a></td>
					<?php $i++;?>
				</tr>

				@endif
				@endforeach




			</tbody>
		</table>
		<!-- Paginate -->
		<div style="text-align: center;">{{ $congvan->links() }}</div>
	</div>
	<!-- end Page Content -->
	@endsection

