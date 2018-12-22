<%@page import="eCore.util.Util_Date"%>
<%@page import="eCore.model.HanhKhach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String tenlop = "HanhKhach";
String tenTrang = "Quản Lý Hành Khách";
String trangDanhSach = "index.jsp?p=pages/hanhkhachs.jsp";
String[] tk_value = {"maHanhKhach", "hoTen", "ngaySinh", "gioiTinh", "noiSinh", "queQuan", "danToc", "tonGiao", "diaChi", "cMND", "email","soDienThoaiDiDong" };
String[] tk_show = {"Mã Hành Khách", "Họ Tên", "Ngày Sinh", "Giới Tính", "Nới Sinh", "Quê Quán", "Dân Tộc", "Tôn Giáo", "Địa Chỉ", "Số CMND","Email","Số Điện Thoại Di động"};
	
%>
<%@ include file="../datxePartial/code-header.jsp"%>

<%
	String mode = session.getAttribute("mode") + "";
	String tenTrangChiTiet = "";
	tenTrangChiTiet = mode.equals("addNew") ? "Thêm mới" : tenTrangChiTiet;
	tenTrangChiTiet = mode.equals("viewDetail") ? "Xem thông tin chi tiết" : tenTrangChiTiet;
	tenTrangChiTiet = mode.equals("viewDetailAndEdit") ? "Chỉnh sửa thông tin" : tenTrangChiTiet;
	tenTrangChiTiet = mode.equals("null") ? "" : tenTrangChiTiet;

	boolean modeView = mode.equals("viewDetail");
	boolean modeEdit = mode.equals("viewDetailAndEdit");

	HanhKhach obj = session.getAttribute("obj") != null ? (HanhKhach) session.getAttribute("obj") : null;
%>
<script>
	function thayDoiMyFileFileName() {
		var x = document.getElementById("maHanhKhach");
		x.value = x.value.toUpperCase();

		var b = document.getElementById("myFileName");
		b.value = x.value;

	}
</script>
<div class="row">
	<div class="col-lg-12">
		<h4 class="page-header"><%=tenTrang%>
			-
			<%=tenTrangChiTiet%>
		</h4>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<form action="luuDuLieu<%=tenlop%>.action" method="post"
	enctype="multipart/form-data">
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading" style="text-align: left;">
					<div class="row">
						<div class="col-md-5">
							<p style="color: red; display: inline;"><%=msg%></p>
						</div>
						<div class="col-md-7">
							<%@ include file="../datxePartial/processform.jsp"%>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row" style="padding: 10px">
						<div class="row">
							<div class="col-lg-6">
								<div class="form-group">
									<label>Mã Hành Khách</label> <input class="form-control"
										id="maHanhKhach" name="maHanhKhach" onblur="thayDoiMyFileFileName()"
											value="<%=(obj != null && obj.getMaHanhKhach() != null ? obj.getMaHanhKhach() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Tên Hành Khách</label> <input class="form-control"
										name="tenHanhKhach"
										value="<%=(obj != null && obj.getHoTen() != null ? obj.getHoTen() : "")%>"
										<%=(modeView ? " readonly " : "")%>>
								</div>
								
								<div class="form-group">
									<label>Ngày Sinh</label> <input class="form-control"
										name="s_ngaySinh" type="date"
										value="<%=(obj != null && obj.getNgaySinh() != null ? Util_Date.dateToString(obj.getNgaySinh()) : "")%>"
										<%=(modeView ? " readonly " : "")%>>
								</div>
								
								<div class="form-group">
									<label>Giới tính</label> <select class="form-control"
										name="gioiTinh" <%=(modeView ? " disabled " : "")%>>
										<option></option>
										<option value="Nam"
											<%=obj != null && obj.getGioiTinh() != null && obj.gioiTinh.equals("Nam") ? "selected" : ""%>>Nam</option>
										<option value="Nữ"
											<%=obj != null && obj.getGioiTinh() != null && obj.gioiTinh.equals("Nữ") ? "selected" : ""%>>Nữ</option>
									</select>
								</div>

								<div class="form-group">
									<label>Quê Quán</label> <input class="form-control"
										name="queQuan"
										value="<%=(obj != null && obj.getQueQuan() != null ? obj.getQueQuan() : "")%>"
										<%=(modeView ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Nơi Sinh</label> <input class="form-control"
										name="noiSinh"
										value="<%=(obj != null && obj.getNoiSinh() != null ? obj.getNoiSinh() : "")%>"
										<%=(modeView ? " readonly " : "")%>>
								</div>


							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<label>Dân Tộc</label> <input class="form-control"
										name="danToc"
										value="<%=(obj != null && obj.getDanToc() != null ? obj.getDanToc() : "")%>"
										<%=(modeView ? " readonly " : "")%>>
								</div>


						
							
							<div class="form-group">
								<label>Địa Chỉ</label> <input class="form-control"
									name="diaChi"
									value="<%=(obj != null && obj.getDiaChi() != null ? obj.getDiaChi() : "")%>"
									<%=(modeView ? " readonly " : "")%>>
							</div>
							<div class="form-group">
								<label>Số CMND</label> <input class="form-control" name="cMND"
									value="<%=(obj != null && obj.getcMND() != null ? obj.getcMND() : "")%>"
									<%=(modeView ? " readonly " : "")%>>
							</div>
							<div class="form-group">
								<label>Email</label> <input class="form-control" name="email"
									value="<%=(obj != null && obj.getEmail() != null ? obj.getEmail() : "")%>"
									<%=(modeView ? " readonly " : "")%>>
							</div>
							<div class="form-group">
								<label>Số Điện Thoại Di Dộng</label> <input
									class="form-control" name="soDienThoaiDiDong"
									value="<%=(obj != null && obj.getSoDienThoaiDiDong() != null ? obj.getSoDienThoaiDiDong() : "")%>"
									<%=(modeView ? " readonly " : "")%>>
							</div>
<!-- 							<div class="form-group"> -->
<!-- 								<label>Ghi Chú</label> <input class="form-control" -->
<!-- 									name="ghiChu" -->
<%-- 									value="<%=(obj != null && obj.getGhiChu() != null ? obj.getGhiChu() : "")%>" --%>
<%-- 									<%=(modeView ? " readonly " : "")%>> --%>
<!-- 							</div> -->
							
							</div>
						</div>
<!-- 						<div class="row"> -->
<!-- 							<div class="col-lg-12"> -->
<!-- <!-- 								<div class="form-group"> --> -->
<!-- <!-- 									<label>Mô tả</label> --> -->
<!-- <!-- 									<textarea class="form-control" cols="80" id="editor1" rows="5" --> -->
<%-- <%-- 										name="moTa" <%=(modeView ? " disabled " : "")%>><%=(obj != null && obj.getMoTa() != null ? obj.getMoTa() : "")%></textarea> --%> --%>
<!-- <!-- 								</div> --> -->
<!-- 								<div class="form-group"> -->
<!-- 									<label>Ghi chú</label> -->
<!-- 									<textarea class="form-control" cols="80" id="editor2" rows="5" -->
<%-- 										name="ghiChu" <%=(modeView ? " disabled " : "")%>><%=(obj != null && obj.getGhiChu() != null ? obj.getGhiChu() : "")%></textarea> --%>
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<input type="hidden" name="s_hinhAnh" -->
<%-- 							value="<%=obj != null && obj.getHinhAnh() != null ? obj.getHinhAnh() : ""%>"> --%>
<!-- 						<input type="hidden" id="myFileName" name="myFileName"></input> <input -->
<!-- 							type="hidden" name="myFolder" -->
<%-- 							value="<%=request.getRealPath("images/taixes")%>" /> --%>
<!-- 						<div class="panel-footer" style="text-align: left;"> -->
<!-- 							<div class="col-md-5"></div> -->
<!-- 							<div class="col-md-7"> -->
<%-- 								<%@ include file="../datxePartial/processform.jsp"%> --%>
<!-- 							</div> -->
<!-- 						</div> -->
						<!-- /.col-lg-6 (nested) -->
						<!-- /.col-lg-6 (nested) -->
					</div>
					<!-- /.row (nested) -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
</form>