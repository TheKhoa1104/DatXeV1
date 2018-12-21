package eCore.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class NhanVien {
	@Id
	private String maNV;
	private String hoVaTenNV;
	private String cmnd;
	private String diaChi;
	private String queQuan;
	private String danToc;
	private String gioiTinh;
	private Date ngaySinh;
	private String sdt;
	private String email;
	private String chucVu;
	private String bacLuong;
	private String trinhDo;
	private Date ngayTuyenDung;
	/**
	 * 
	 */
	public NhanVien() {
	}
	/**
	 * @param maNV
	 * @param hoVaTenNV
	 * @param cmnd
	 * @param diaChi
	 * @param queQuan
	 * @param danToc
	 * @param gioiTinh
	 * @param ngaySinh
	 * @param sdt
	 * @param email
	 * @param chucVu
	 * @param bacLuong
	 * @param trinhDo
	 * @param ngayTuyenDung
	 */
	public NhanVien(String maNV, String hoVaTenNV, String cmnd, String diaChi, String queQuan, String danToc,
			String gioiTinh, Date ngaySinh, String sdt, String email, String chucVu, String bacLuong, String trinhDo,
			Date ngayTuyenDung) {
		this.maNV = maNV;
		this.hoVaTenNV = hoVaTenNV;
		this.cmnd = cmnd;
		this.diaChi = diaChi;
		this.queQuan = queQuan;
		this.danToc = danToc;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.sdt = sdt;
		this.email = email;
		this.chucVu = chucVu;
		this.bacLuong = bacLuong;
		this.trinhDo = trinhDo;
		this.ngayTuyenDung = ngayTuyenDung;
	}
	/**
	 * @return the maNV
	 */
	public String getMaNV() {
		return maNV;
	}
	/**
	 * @param maNV the maNV to set
	 */
	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}
	/**
	 * @return the hoVaTenNV
	 */
	public String getHoVaTenNV() {
		return hoVaTenNV;
	}
	/**
	 * @param hoVaTenNV the hoVaTenNV to set
	 */
	public void setHoVaTenNV(String hoVaTenNV) {
		this.hoVaTenNV = hoVaTenNV;
	}
	/**
	 * @return the cmnd
	 */
	public String getCmnd() {
		return cmnd;
	}
	/**
	 * @param cmnd the cmnd to set
	 */
	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}
	/**
	 * @return the diaChi
	 */
	public String getDiaChi() {
		return diaChi;
	}
	/**
	 * @param diaChi the diaChi to set
	 */
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	/**
	 * @return the queQuan
	 */
	public String getQueQuan() {
		return queQuan;
	}
	/**
	 * @param queQuan the queQuan to set
	 */
	public void setQueQuan(String queQuan) {
		this.queQuan = queQuan;
	}
	/**
	 * @return the danToc
	 */
	public String getDanToc() {
		return danToc;
	}
	/**
	 * @param danToc the danToc to set
	 */
	public void setDanToc(String danToc) {
		this.danToc = danToc;
	}
	/**
	 * @return the gioiTinh
	 */
	public String getGioiTinh() {
		return gioiTinh;
	}
	/**
	 * @param gioiTinh the gioiTinh to set
	 */
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	/**
	 * @return the ngaySinh
	 */
	public Date getNgaySinh() {
		return ngaySinh;
	}
	/**
	 * @param ngaySinh the ngaySinh to set
	 */
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	/**
	 * @return the sdt
	 */
	public String getSdt() {
		return sdt;
	}
	/**
	 * @param sdt the sdt to set
	 */
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the chucVu
	 */
	public String getChucVu() {
		return chucVu;
	}
	/**
	 * @param chucVu the chucVu to set
	 */
	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}
	/**
	 * @return the bacLuong
	 */
	public String getBacLuong() {
		return bacLuong;
	}
	/**
	 * @param bacLuong the bacLuong to set
	 */
	public void setBacLuong(String bacLuong) {
		this.bacLuong = bacLuong;
	}
	/**
	 * @return the trinhDo
	 */
	public String getTrinhDo() {
		return trinhDo;
	}
	/**
	 * @param trinhDo the trinhDo to set
	 */
	public void setTrinhDo(String trinhDo) {
		this.trinhDo = trinhDo;
	}
	/**
	 * @return the ngayTuyenDung
	 */
	public Date getNgayTuyenDung() {
		return ngayTuyenDung;
	}
	/**
	 * @param ngayTuyenDung the ngayTuyenDung to set
	 */
	public void setNgayTuyenDung(Date ngayTuyenDung) {
		this.ngayTuyenDung = ngayTuyenDung;
	}

		
}
