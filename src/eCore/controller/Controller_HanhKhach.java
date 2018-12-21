package eCore.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import eCore.dao.ObjectDAO;
import eCore.model.HanhKhach;
import eCore.model.HanhTrinhHanhKhach;
import eCore.model.TaiXe;
import eCore.modelDao.DAO_HanhKhach;
import eCore.modelDao.DAO_HanhTrinhHanhKhach;
import eCore.util.Util_Date;


public class Controller_HanhKhach extends HanhKhach implements ZEController{
ObjectDAO dao = new DAO_HanhKhach();

String timKiemTheo;
String tuKhoa;
String duongDanTrang = "eCore/pages/hanhkhachs.jsp";
String duongDanTrangView = "eCore/pages/hanhkhach.jsp";
String tenCotTimDoiTuong = "maHanhKhach";
String maObj;
//String maHanhTrinhHanhKhach;
String s_thoiGianCapNhat;
public String getTimKiemTheo() {
	return timKiemTheo;
}
public void setTimKiemTheo(String timKiemTheo) {
	this.timKiemTheo = timKiemTheo;
}
public String getTuKhoa() {
	return tuKhoa;
}
public void setTuKhoa(String tuKhoa) {
	this.tuKhoa = tuKhoa;
}
public String getTenCotTimDoiTuong() {
	return tenCotTimDoiTuong;
}
public void setTenCotTimDoiTuong(String tenCotTimDoiTuong) {
	this.tenCotTimDoiTuong = tenCotTimDoiTuong;
}
public String getMaObj() {
	return maObj;
}
public void setMaObj(String maObj) {
	this.maObj = maObj;
}
//public String getMaHanhTrinhHanhKhach() {
//	return maHanhTrinhHanhKhach;
//}
//public void setMaHanhTrinhHanhKhach(String maHanhTrinhHanhKhach) {
//	this.maHanhTrinhHanhKhach = maHanhTrinhHanhKhach;
//}
//public HanhTrinhHanhKhach geHanhTrinhHanhKhach() {
//	ObjectDAO<HanhTrinhHanhKhach> dao_HanhTrinhHanhKhach = new DAO_HanhTrinhHanhKhach();
//	ArrayList<HanhTrinhHanhKhach> list_HanhTrinhHanhKhach = dao_HanhTrinhHanhKhach.listByColumns("maHanhTrinhHanhKhach", getMaHanhTrinhHanhKhach());
//	if (list_HanhTrinhHanhKhach.size() > 0) {
//		return list_HanhTrinhHanhKhach.get(0);
//	} else {
//		return null;
//	}
//}
public String getS_thoiGianCapNhat() {
	return s_thoiGianCapNhat;
}
public void setS_thoiGianCapNhat(String s_thoiGianCapNhat) {
	this.s_thoiGianCapNhat = s_thoiGianCapNhat;
}

public Date getThoiGianCapNhat() {
	return Util_Date.stringToDate(getS_thoiGianCapNhat());
}
@Override
public String addNew() {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	session.setAttribute("mode", "addNew");
	session.setAttribute("p", duongDanTrangView);
	session.setAttribute("msg", null);
	session.setAttribute("obj", null);
	return "SUCCESS";
}
@Override
public String viewDetail() {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	String maobj = request.getParameter("maobj");

	session.setAttribute("mode", "viewDetail");

	ArrayList<HanhKhach> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
	if (arr.size() > 0) {
		session.setAttribute("obj", arr.get(0));
		session.setAttribute("p", duongDanTrangView);
		return "SUCCESS";
	} else {
		return "FAIL";
	}
}
@Override
public String viewDetailAndEdit() {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	session.setAttribute("msg", null);

	String maobj = request.getParameter("maobj");
	session.setAttribute("mode", "viewDetailAndEdit");
	ArrayList<HanhKhach> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
	if (arr.size() > 0) {
		session.setAttribute("obj", arr.get(0));
		session.setAttribute("p", duongDanTrangView);
		return "SUCCESS";
	} else {
		return "FAIL";
	}
}
@Override
public String saveOrUpdate() {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	HanhKhach obj = new HanhKhach();
	obj.maHanhKhach = getMaHanhKhach();
	obj.hoTen = getHoTen();
//	obj.hinhAnh = s.substring(s.lastIndexOf("\\") + 1, s.length());
	obj.ngaySinh = getNgaySinh();
	obj.gioiTinh = getGioiTinh();
	obj.noiSinh = getNoiSinh();
	obj.queQuan = getQueQuan();
	obj.danToc = getDanToc();
	obj.tonGiao = getTonGiao();
	obj.diaChi = getDiaChi();
	obj.cMND = getcMND();
	obj.email = getEmail();
	obj.soDienThoaiDiDong = getSoDienThoaiDiDong();
//	obj.ghiChu = getGhiChu();
//	obj.hanhTrinhHanhKhach = getHanhTrinhHanhKhach();
	obj.thoiGianCapNhat = new Date();
	if (dao.saveOrUpdate(obj)) {
		session.setAttribute("msg", "Cập nhật dữ liệu thành công");
		session.setAttribute("obj", obj);
		session.setAttribute("mode", "viewDetailAndEdit");
		session.setAttribute("p", duongDanTrangView);
		return "SUCCESS";
	} else {
		return "FAIL";
	}
}
@Override
public String delete() {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	String maobj = request.getParameter("maobj");
	HanhKhach obj = new HanhKhach();
	obj.setMaHanhKhach(maobj);
	if (dao.delete(obj)) {
		session.setAttribute("msg", "Xóa dữ liệu thành công");
		session.setAttribute("p", duongDanTrang);
		return "SUCCESS";
	} else {
		return "FAIL";
	}
}
@Override
public String search() {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	String column = getTimKiemTheo();
	String key = getTuKhoa();
	ArrayList<HanhKhach> arr = dao.listByColumnLike(column, key);
	session.setAttribute("arr", arr);
	session.setAttribute("checkTimKiem", "true");
	session.setAttribute("p", duongDanTrang);
	return "SUCCESS";
}
@Override
public String refresh() {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	session.setAttribute("arr", null);
	session.setAttribute("msg", null);
	session.setAttribute("checkTimKiem", null);
	session.setAttribute("p", duongDanTrang);
	return "SUCCESS";
}
@Override
public String importData() {
	// TODO Auto-generated method stub
	return null;
}
@Override
public String exportData() throws IOException {
	// TODO Auto-generated method stub
	return null;
}
}
