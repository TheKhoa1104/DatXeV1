<%@page import="eCore.model.TaiKhoanHanhKhach"%>
<%@page import="eCore.modelDao.DAO_HanhKhach"%>
<%@page import="eCore.model.HanhKhach"%>
<%@page import="eCore.model.TaiKhoanQuanTri"%>
<%@page import="eCore.modelDao.DAO_QuanTri"%>
<%@page import="eCore.model.QuanTri"%>
<%@page import="eCore.modelDao.DAO_TaiXe"%>
<%@page import="eCore.model.TaiXe"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="eCore.modelDao.DAO_ChucNang"%>
<%@page import="eCore.model.ChucNang"%>
<%@page import="eCore.modelDao.DAO_NhomPhanQuyen"%>
<%@page import="eCore.model.NhomPhanQuyen"%>
<%@page import="eCore.util.Util_MD5"%>
<%@page import="eCore.modelDao.DAO_TaiKhoan"%>
<%@page import="eCore.model.TaiKhoanTaiXe"%>
<%@page import="eCore.model.TaiKhoan"%>

<%@page import="eCore.dao.ObjectDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ObjectDAO daochucnang = new DAO_ChucNang();

		ChucNang CN_QuanLyThongTinCoBan = new ChucNang();
		CN_QuanLyThongTinCoBan.setMaChucNang("CN_QuanLyThongTinCoBan");
		CN_QuanLyThongTinCoBan.setDuongDan("");
		CN_QuanLyThongTinCoBan.setHinhAnh("fa fa-wrench");
		CN_QuanLyThongTinCoBan.setTenHienThi("Thông tin cơ bản");
		CN_QuanLyThongTinCoBan.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyThongTinCoBan);
		
		ChucNang CN_QuanLyThongTinTaiXe = new ChucNang();
		CN_QuanLyThongTinTaiXe.setMaChucNang("CN_QuanLyThongTinTaiXe");
		CN_QuanLyThongTinTaiXe.setDuongDan("pages/taixes.jsp");
		CN_QuanLyThongTinTaiXe.setHinhAnh("fa fa-list-ol");
		CN_QuanLyThongTinTaiXe.setTenHienThi("Quản lý thông tin tài xế");
		CN_QuanLyThongTinTaiXe.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_QuanLyThongTinTaiXe);
		
		ChucNang CN_KeKhaiThongTinTaiXe = new ChucNang();
		CN_KeKhaiThongTinTaiXe.setMaChucNang("CN_KeKhaiThongTinTaiXe");
		CN_KeKhaiThongTinTaiXe.setDuongDan("pages/taixe.jsp");
		CN_KeKhaiThongTinTaiXe.setHinhAnh("fa fa-paperclip");
		CN_KeKhaiThongTinTaiXe.setTenHienThi("Kê khai thông tin tài xế");
		CN_KeKhaiThongTinTaiXe.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_KeKhaiThongTinTaiXe);
		
		
		ChucNang CN_QuanLyThongTinQuanTri = new ChucNang();
		CN_QuanLyThongTinQuanTri.setMaChucNang("CN_QuanLyThongTinQuanTri");
		CN_QuanLyThongTinQuanTri.setDuongDan("pages/quantris.jsp");
		CN_QuanLyThongTinQuanTri.setHinhAnh("fa fa-list-ol");
		CN_QuanLyThongTinQuanTri.setTenHienThi("Quản lý thông tin quản trị");
		CN_QuanLyThongTinQuanTri.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_QuanLyThongTinQuanTri);
		
		
		ChucNang CN_KeKhaiThongTinQuanTri = new ChucNang();
		CN_KeKhaiThongTinQuanTri.setMaChucNang("CN_KeKhaiThongTinQuanTri");
		CN_KeKhaiThongTinQuanTri.setDuongDan("pages/quantri.jsp");
		CN_KeKhaiThongTinQuanTri.setHinhAnh("fa fa-paperclip");
		CN_KeKhaiThongTinQuanTri.setTenHienThi("Kê khai thông tin quản trị");
		CN_KeKhaiThongTinQuanTri.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_KeKhaiThongTinQuanTri);
		
		
		ChucNang CN_QuanLyThongTinHanhKhach = new ChucNang();
		CN_QuanLyThongTinHanhKhach.setMaChucNang("CN_QuanLyThongTinHanhKhach");
		CN_QuanLyThongTinHanhKhach.setDuongDan("pages/hanhkhachs.jsp");
		CN_QuanLyThongTinHanhKhach.setHinhAnh("fa fa-list-ol");
		CN_QuanLyThongTinHanhKhach.setTenHienThi("Quản lý thông tin hành khách");
		CN_QuanLyThongTinHanhKhach.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_QuanLyThongTinHanhKhach);
		
		
		ChucNang CN_KeKhaiThongTinHanhKhach = new ChucNang();
		CN_KeKhaiThongTinHanhKhach.setMaChucNang("CN_KeKhaiThongTinHanhKhach");
		CN_KeKhaiThongTinHanhKhach.setDuongDan("pages/hanhkhach.jsp");
		CN_KeKhaiThongTinHanhKhach.setHinhAnh("fa fa-paperclip");
		CN_KeKhaiThongTinHanhKhach.setTenHienThi("Kê khai thông tin Hành khách");
		CN_KeKhaiThongTinHanhKhach.setChucNangCha(CN_QuanLyThongTinCoBan);
		daochucnang.saveOrUpdate(CN_KeKhaiThongTinHanhKhach);
		
		
		
		
		
		
		
		//quản lý chức năng và tài khoản
		
		ChucNang CN_QuanLyChucNangVaTaiKhoan = new ChucNang();
		CN_QuanLyChucNangVaTaiKhoan.setMaChucNang("eCore_QuanLyChucNangVaTaiKhoan");
		CN_QuanLyChucNangVaTaiKhoan.setDuongDan("null");
		CN_QuanLyChucNangVaTaiKhoan.setHinhAnh("fa fa-filter");
		CN_QuanLyChucNangVaTaiKhoan.setTenHienThi("Chức năng và tài khoản");
		CN_QuanLyChucNangVaTaiKhoan.setChucNangCha(null);
		daochucnang.saveOrUpdate(CN_QuanLyChucNangVaTaiKhoan);
		
		ChucNang CN_QuanLyTaiKhoanTaiXe = new ChucNang();
		CN_QuanLyTaiKhoanTaiXe.setMaChucNang("eCore_CN_QuanLyTaiKhoanTaiXe");
		CN_QuanLyTaiKhoanTaiXe.setDuongDan("eCore/pages/taikhoansinhviens.jsp");
		CN_QuanLyTaiKhoanTaiXe.setHinhAnh("fa fa-users");
		CN_QuanLyTaiKhoanTaiXe.setTenHienThi("Quản lý tài khoản tài xế");
		CN_QuanLyTaiKhoanTaiXe.setChucNangCha(CN_QuanLyChucNangVaTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanTaiXe);
		
		
		ChucNang CN_QuanLyTaiKhoanQuanTri = new ChucNang();
		CN_QuanLyTaiKhoanQuanTri.setMaChucNang("eCore_CN_QuanLyTaiKhoanQuanTri");
		CN_QuanLyTaiKhoanQuanTri.setDuongDan("eCore/pages/taikhoanquantris.jsp");
		CN_QuanLyTaiKhoanQuanTri.setHinhAnh("fa fa-users");
		CN_QuanLyTaiKhoanQuanTri.setTenHienThi("Quản lý tài khoản quản trị");
		CN_QuanLyTaiKhoanQuanTri.setChucNangCha(CN_QuanLyChucNangVaTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanQuanTri);
		
		ChucNang CN_QuanLyTaiKhoanHanhKhach = new ChucNang();
		CN_QuanLyTaiKhoanHanhKhach.setMaChucNang("eCore_CN_QuanLyTaiKhoanQuanTri");
		CN_QuanLyTaiKhoanHanhKhach.setDuongDan("eCore/pages/taikhoanquantris.jsp");
		CN_QuanLyTaiKhoanHanhKhach.setHinhAnh("fa fa-users");
		CN_QuanLyTaiKhoanHanhKhach.setTenHienThi("Quản lý tài khoản hành khách");
		CN_QuanLyTaiKhoanHanhKhach.setChucNangCha(CN_QuanLyChucNangVaTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyTaiKhoanHanhKhach);
		
		
		
		
		
		ChucNang CN_QuanLyChucNang = new ChucNang();
		CN_QuanLyChucNang.setMaChucNang("eCore_CN_QuanLyChucNang");
		CN_QuanLyChucNang.setDuongDan("pages/chucnangs.jsp");
		CN_QuanLyChucNang.setHinhAnh("fa fa-share-alt");
		CN_QuanLyChucNang.setTenHienThi("Quản lý chức năng");
		CN_QuanLyChucNang.setChucNangCha(CN_QuanLyChucNangVaTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyChucNang);
		
		ChucNang CN_QuanLyPhanQuyen = new ChucNang();
		CN_QuanLyPhanQuyen.setMaChucNang("kTXCore_1_3_CN_QuanLyPhanQuyen");
		CN_QuanLyPhanQuyen.setDuongDan("kTXCore/pages/nhomphanquyens.jsp");
		CN_QuanLyPhanQuyen.setHinhAnh("fa fa-shield");
		CN_QuanLyPhanQuyen.setTenHienThi("Quản lý phân quyền");
		CN_QuanLyPhanQuyen.setChucNangCha(CN_QuanLyChucNangVaTaiKhoan);
		daochucnang.saveOrUpdate(CN_QuanLyPhanQuyen);

		//Phan Quyen Cua Tai Xe

		TaiXe tx = new TaiXe();
		tx.setMaTaiXe("001");
		tx.setHoTen("Le Nhat Tung");
		tx.setEmail("tungit07@gmail.com");
		ObjectDAO dao2 = new DAO_TaiXe();
		dao2.saveOrUpdate(tx);

		

		

		NhomPhanQuyen nhomPhanQuyen1 = new NhomPhanQuyen();
		nhomPhanQuyen1.setMaNhomPhanQuyen("taixe");
		nhomPhanQuyen1.setTenNhomPhanQuyen("Tài Xế");
		Set<ChucNang> cn1 = new HashSet<ChucNang>();
		cn1.add(CN_QuanLyThongTinCoBan);
		cn1.add(CN_QuanLyThongTinTaiXe);
		cn1.add(CN_KeKhaiThongTinTaiXe);
		nhomPhanQuyen1.setChucNangs(cn1);
		ObjectDAO daonqt = new DAO_NhomPhanQuyen();
		daonqt.saveOrUpdate(nhomPhanQuyen1);

		TaiKhoanTaiXe tk = new TaiKhoanTaiXe();
		tk.setMaDangNhap(tx.getEmail());
		tk.setEmail(tx.getEmail());
		tk.setMatKhau(Util_MD5.md5("123456"));
		tk.setTaixe(tx);
		tk.setNhomPhanQuyen(nhomPhanQuyen1);
		ObjectDAO dao3 = new DAO_TaiKhoan();
		dao3.saveOrUpdate(tk);

		//tai khoan quan tri
		

		

		NhomPhanQuyen nhomPhanQuyen2 = new NhomPhanQuyen();
		nhomPhanQuyen2.setMaNhomPhanQuyen("quantri");
		nhomPhanQuyen2.setTenNhomPhanQuyen("Quản Trị");
		Set<ChucNang> cn2 = new HashSet<ChucNang>();
		cn2.add(CN_QuanLyThongTinCoBan);
		cn2.add(CN_QuanLyChucNangVaTaiKhoan);
		cn2.add(CN_QuanLyThongTinQuanTri);
		cn2.add(CN_KeKhaiThongTinQuanTri);
		cn2.add(CN_QuanLyTaiKhoanQuanTri);
		cn2.add(CN_QuanLyThongTinTaiXe);
		cn2.add(CN_QuanLyThongTinHanhKhach);
		cn2.add(CN_QuanLyChucNang);
		cn2.add(CN_QuanLyPhanQuyen);
		
		cn2.add(CN_QuanLyChucNang);
		nhomPhanQuyen2.setChucNangs(cn2);
		ObjectDAO daoqt = new DAO_NhomPhanQuyen();
		daoqt.saveOrUpdate(nhomPhanQuyen2);

		QuanTri qt = new QuanTri();
		qt.setMaQuanTri("001");
		qt.setHoTen("Phan The Khoa");
		qt.setEmail("bachduong567@gmail.com");
		ObjectDAO dao4 = new DAO_QuanTri();
		dao4.saveOrUpdate(qt);

		TaiKhoanQuanTri tkqt = new TaiKhoanQuanTri();
		tkqt.setMaDangNhap(qt.getEmail());
		tkqt.setEmail(qt.getEmail());
		tkqt.setMatKhau(Util_MD5.md5("123456"));
		tkqt.setQuantri(qt);
		tkqt.setNhomPhanQuyen(nhomPhanQuyen2);
		ObjectDAO dao5 = new DAO_TaiKhoan();
		dao5.saveOrUpdate(tkqt);

		//phan quyen cua hanh khach
		HanhKhach hk = new HanhKhach();
		hk.setMaHanhKhach("001");
		hk.setHoTen("Mai Van Cong");
		hk.setEmail("mvc@gmail.com");
		ObjectDAO dao6 = new DAO_HanhKhach();
		dao2.saveOrUpdate(hk);
		
		
		
		
		
		NhomPhanQuyen nhomPhanQuyen3 = new NhomPhanQuyen();
		nhomPhanQuyen3.setMaNhomPhanQuyen("hanhkhach");
		nhomPhanQuyen3.setTenNhomPhanQuyen("Hành Khách");
		Set<ChucNang> cn3 = new HashSet<ChucNang>();
		cn3.add(CN_QuanLyThongTinCoBan);
		cn3.add(CN_QuanLyThongTinHanhKhach);
		cn3.add(CN_KeKhaiThongTinHanhKhach);
		nhomPhanQuyen3.setChucNangs(cn3);
		ObjectDAO daonhk = new DAO_NhomPhanQuyen();
		daonhk.saveOrUpdate(nhomPhanQuyen3);
		
		
		TaiKhoanHanhKhach tkhk = new TaiKhoanHanhKhach();
		tkhk.setMaDangNhap(hk.getEmail());
		tkhk.setEmail(hk.getEmail());
		tkhk.setMatKhau(Util_MD5.md5("123456"));
		tkhk.setHanhKhach(hk);
		tkhk.setNhomPhanQuyen(nhomPhanQuyen3);
		ObjectDAO dao7 = new DAO_TaiKhoan();
		dao7.saveOrUpdate(tkhk);

		
// 		TaiKhoanQuanTri tkqt = new TaiKhoanQuanTri();
// 		tkqt.setMaDangNhap(qt.getEmail());
// 		tkqt.setEmail(qt.getEmail());
// 		tkqt.setMatKhau(Util_MD5.md5("123456"));
// 		tkqt.setQuantri(qt);
// 		tkqt.setNhomPhanQuyen(nhomPhanQuyen2);
// 		ObjectDAO dao5 = new DAO_TaiKhoan();
// 		dao5.saveOrUpdate(tkqt);
		
	%>

</body>
</html>