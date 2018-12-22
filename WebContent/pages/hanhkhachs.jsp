<%@page import="eCore.modelDao.DAO_HanhKhach"%>
<%@page import="eCore.model.HanhKhach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String tenlop = "HanhKhach";
String tenTrang = "Quản Lý Hành Khách";
String trangDanhSach = "index.jsp?p=eCore/pages/hanhkhachs.jsp";
String[] tk_value = {"maHanhKhach", "hoTen", "ngaySinh", "gioiTinh", "noiSinh", "queQuan", "danToc", "tonGiao", "diaChi", "cMND", "email","soDienThoaiDiDong" };
String[] tk_show = {"Mã Hành Khách", "Họ Tên", "Ngày Sinh", "Giới Tính", "Nới Sinh", "Quê Quán", "Dân Tộc", "Tôn Giáo", "Địa Chỉ", "Số CMND","Email","Số Điện Thoại Di động"};
	
%>
<%@ include file="../../datxePartial/code-header.jsp"%>
<%
	ObjectDAO<HanhKhach> dao = new DAO_HanhKhach();

	ArrayList<HanhKhach> list = new ArrayList<HanhKhach>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof HanhKhach) {
				list = (ArrayList<HanhKhach>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<HanhKhach>();
	} else {
		list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
	}
%>
<div class="row">
	<div class="col-lg-12">
		<h4 class="page-header"><%=tenTrang%>
			<p style="color: red; display: inline;"><%=msg%></p>
		</h4>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<%@ include file="../../datxePartial/panel-heading.jsp"%>
		<!-- /.panel-heading -->
		<div class="panel-body">
			<table width="100%"
				class="table table-striped table-bordered table-hover"
				id="dataTables-example">
				<thead>
					<tr>
						<th>Mã hành khách</th>
						<th>Họ tên</th>
						<th>Ngày sinh</th>
						<th>Giới tính</th>
						<th>Nơi sinh</th>
						<th>Quê quán</th>
						<th>Dân tộc</th>
						<th>Tôn giáo</th>
						<th>Địa chỉ</th>
						<th>CMND</th>
						<th>Email</th>
						<th>Số diện thoại di động</th>
						
						

					</tr>
				</thead>
				<tbody>
					<%
						for (HanhKhach obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaHanhKhach();
							String tenDoiTuong = obj.getHoTen();
					%>
					<tr class="odd gradeX">

						<td><%=obj.getMaHanhKhach()%></td>
						<td><%=obj.getHoTen()!=null?obj.getHoTen():""%></td>
						<td><%=obj.getNgaySinh()!=null?obj.getNgaySinh():""%></td>
						<td><%=obj.getGioiTinh()!=null?obj.getGioiTinh():""%></td>
						<td><%=obj.getNoiSinh()!=null?obj.getNoiSinh():""%></td>
						<td><%=obj.getQueQuan()!=null?obj.getQueQuan():""%></td>
						<td><%=obj.getDanToc()!=null?obj.getDanToc():""%></td>
						<td><%=obj.getTonGiao()!=null?obj.getTonGiao():""%></td>
						<td><%=obj.getDiaChi()!=null?obj.getDiaChi():""%></td>
						<td><%=obj.getcMND()!=null?obj.getcMND():""%></td>
						<td><%=obj.getEmail()!=null?obj.getEmail():""%></td>
						<td><%=obj.getSoDienThoaiDiDong()!=null?obj.getSoDienThoaiDiDong():""%></td>
						<td style="text-align: center;"><%@ include
								file="../../datxePartial/menupullcuadoituong.jsp"%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<!-- /.table-responsive -->
			<!-- Phan trang -->
			<%@ include file="../../datxePartial/phantrang.jsp"%>
			<!-- ket thuc phan trang -->
		</div>
		<!-- /.panel-body -->
	</div>
	<!-- /.panel -->
</div>
<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<!-- Modal Tìm kiếm-->
<%@ include file="../../datxePartial/timkiemModel.jsp"%>

<script type="text/javascript">
	document.getElementById("nutNhapLieuExcel").style.display = "none";
</script>