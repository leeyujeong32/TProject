package main;

import lombok.Getter;
import lombok.Setter;

public class ExChangeRateVo {

	private String cur_unit;
	private String kftc_deal_bas_r;
	private String cur_nm;
	
	public String getCur_unit() {
		return cur_unit;
	}
	public void setCur_unit(String cur_unit) {
		this.cur_unit = cur_unit;
	}
	public String getKftc_deal_bas_r() {
		return kftc_deal_bas_r;
	}
	public void setKftc_deal_bas_r(String kftc_deal_bas_r) {
		this.kftc_deal_bas_r = kftc_deal_bas_r;
	}
	public String getCur_nm() {
		return cur_nm;
	}
	public void setCur_nm(String cur_nm) {
		this.cur_nm = cur_nm;
	}
	
	
	
}
