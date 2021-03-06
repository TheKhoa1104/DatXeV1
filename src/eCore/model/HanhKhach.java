package eCore.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Type;

@Entity
public class HanhKhach implements Comparable<HanhKhach> {
	@Id
	public String maHanhKhach;
	public String hoTen;
	public String hinhAnh;
	public Date ngaySinh;
	public String gioiTinh;
	public String noiSinh;
	public String queQuan;
	public String danToc;
	public String tonGiao;
	public String diaChi;
	public String cMND;
	public String email;
	public String soDienThoaiDiDong;
	public Date thoiGianCapNhat;
	/**
	 * 
	 */
	public HanhKhach() {
	}
	/**
	 * @param maHanhKhach
	 * @param hoTen
	 * @param hinhAnh
	 * @param ngaySinh
	 * @param gioiTinh
	 * @param noiSinh
	 * @param queQuan
	 * @param danToc
	 * @param tonGiao
	 * @param diaChi
	 * @param cMND
	 * @param email
	 * @param soDienThoaiDiDong
	 * @param thoiGianCapNhat
	 */
	public HanhKhach(String maHanhKhach, String hoTen, String hinhAnh, Date ngaySinh, String gioiTinh, String noiSinh,
			String queQuan, String danToc, String tonGiao, String diaChi, String cMND, String email,
			String soDienThoaiDiDong, Date thoiGianCapNhat) {
		this.maHanhKhach = maHanhKhach;
		this.hoTen = hoTen;
		this.hinhAnh = hinhAnh;
		this.ngaySinh = ngaySinh;
		this.gioiTinh = gioiTinh;
		this.noiSinh = noiSinh;
		this.queQuan = queQuan;
		this.danToc = danToc;
		this.tonGiao = tonGiao;
		this.diaChi = diaChi;
		this.cMND = cMND;
		this.email = email;
		this.soDienThoaiDiDong = soDienThoaiDiDong;
		this.thoiGianCapNhat = thoiGianCapNhat;
	}
	public String getMaHanhKhach() {
		return maHanhKhach;
	}
	public void setMaHanhKhach(String maHanhKhach) {
		this.maHanhKhach = maHanhKhach;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public Date getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public String getNoiSinh() {
		return noiSinh;
	}
	public void setNoiSinh(String noiSinh) {
		this.noiSinh = noiSinh;
	}
	public String getQueQuan() {
		return queQuan;
	}
	public void setQueQuan(String queQuan) {
		this.queQuan = queQuan;
	}
	public String getDanToc() {
		return danToc;
	}
	public void setDanToc(String danToc) {
		this.danToc = danToc;
	}
	public String getTonGiao() {
		return tonGiao;
	}
	public void setTonGiao(String tonGiao) {
		this.tonGiao = tonGiao;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getcMND() {
		return cMND;
	}
	public void setcMND(String cMND) {
		this.cMND = cMND;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSoDienThoaiDiDong() {
		return soDienThoaiDiDong;
	}
	public void setSoDienThoaiDiDong(String soDienThoaiDiDong) {
		this.soDienThoaiDiDong = soDienThoaiDiDong;
	}
	public Date getThoiGianCapNhat() {
		return thoiGianCapNhat;
	}
	public void setThoiGianCapNhat(Date thoiGianCapNhat) {
		this.thoiGianCapNhat = thoiGianCapNhat;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cMND == null) ? 0 : cMND.hashCode());
		result = prime * result + ((danToc == null) ? 0 : danToc.hashCode());
		result = prime * result + ((diaChi == null) ? 0 : diaChi.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((gioiTinh == null) ? 0 : gioiTinh.hashCode());
		result = prime * result + ((hinhAnh == null) ? 0 : hinhAnh.hashCode());
		result = prime * result + ((hoTen == null) ? 0 : hoTen.hashCode());
		result = prime * result + ((maHanhKhach == null) ? 0 : maHanhKhach.hashCode());
		result = prime * result + ((ngaySinh == null) ? 0 : ngaySinh.hashCode());
		result = prime * result + ((noiSinh == null) ? 0 : noiSinh.hashCode());
		result = prime * result + ((queQuan == null) ? 0 : queQuan.hashCode());
		result = prime * result + ((soDienThoaiDiDong == null) ? 0 : soDienThoaiDiDong.hashCode());
		result = prime * result + ((thoiGianCapNhat == null) ? 0 : thoiGianCapNhat.hashCode());
		result = prime * result + ((tonGiao == null) ? 0 : tonGiao.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HanhKhach other = (HanhKhach) obj;
		if (cMND == null) {
			if (other.cMND != null)
				return false;
		} else if (!cMND.equals(other.cMND))
			return false;
		if (danToc == null) {
			if (other.danToc != null)
				return false;
		} else if (!danToc.equals(other.danToc))
			return false;
		if (diaChi == null) {
			if (other.diaChi != null)
				return false;
		} else if (!diaChi.equals(other.diaChi))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (gioiTinh == null) {
			if (other.gioiTinh != null)
				return false;
		} else if (!gioiTinh.equals(other.gioiTinh))
			return false;
		if (hinhAnh == null) {
			if (other.hinhAnh != null)
				return false;
		} else if (!hinhAnh.equals(other.hinhAnh))
			return false;
		if (hoTen == null) {
			if (other.hoTen != null)
				return false;
		} else if (!hoTen.equals(other.hoTen))
			return false;
		if (maHanhKhach == null) {
			if (other.maHanhKhach != null)
				return false;
		} else if (!maHanhKhach.equals(other.maHanhKhach))
			return false;
		if (ngaySinh == null) {
			if (other.ngaySinh != null)
				return false;
		} else if (!ngaySinh.equals(other.ngaySinh))
			return false;
		if (noiSinh == null) {
			if (other.noiSinh != null)
				return false;
		} else if (!noiSinh.equals(other.noiSinh))
			return false;
		if (queQuan == null) {
			if (other.queQuan != null)
				return false;
		} else if (!queQuan.equals(other.queQuan))
			return false;
		if (soDienThoaiDiDong == null) {
			if (other.soDienThoaiDiDong != null)
				return false;
		} else if (!soDienThoaiDiDong.equals(other.soDienThoaiDiDong))
			return false;
		if (thoiGianCapNhat == null) {
			if (other.thoiGianCapNhat != null)
				return false;
		} else if (!thoiGianCapNhat.equals(other.thoiGianCapNhat))
			return false;
		if (tonGiao == null) {
			if (other.tonGiao != null)
				return false;
		} else if (!tonGiao.equals(other.tonGiao))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "HanhKhach [maHanhKhach=" + maHanhKhach + ", hoTen=" + hoTen + ", hinhAnh=" + hinhAnh + ", ngaySinh="
				+ ngaySinh + ", gioiTinh=" + gioiTinh + ", noiSinh=" + noiSinh + ", queQuan=" + queQuan + ", danToc="
				+ danToc + ", tonGiao=" + tonGiao + ", diaChi=" + diaChi + ", cMND=" + cMND + ", email=" + email
				+ ", soDienThoaiDiDong=" + soDienThoaiDiDong + ", thoiGianCapNhat=" + thoiGianCapNhat + "]";
	}
	@Override
	public int compareTo(HanhKhach o) {
		// TODO Auto-generated method stub
		return this.maHanhKhach.compareTo(o.maHanhKhach);
	}
	
	
}
