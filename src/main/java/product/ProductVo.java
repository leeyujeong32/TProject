package product;

import java.sql.Timestamp;
import java.time.chrono.ChronoLocalDateTime;

import util.CommonVo;

public class ProductVo extends CommonVo{

	String productid;
	String title;
	String conditions;
	String country;
	Timestamp endtime;
	String image;
	boolean isavailable;
	double price;
	String primary_category;
	String secondary_category;
	double seller_feedback;
	String seller_name;
	double shipping_cost;
	Timestamp shipping_time;
	Timestamp start_time;
	String url;
	int watchcount;
	long timeleft;
	String timeleft_str;
	int page_boolean;
	
	
	
	public int getPage_boolean() {
		return page_boolean;
	}
	public void setPage_boolean(int page_boolean) {
		this.page_boolean = page_boolean;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getConditions() {
		return conditions;
	}
	public void setConditions(String conditions) {
		this.conditions = conditions;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Timestamp getEndtime() {
		return endtime;
	}
	public void setEndtime(Timestamp endtime) {
		this.endtime = endtime;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public boolean isIsavailable() {
		return isavailable;
	}
	public void setIsavailable(boolean isavailable) {
		this.isavailable = isavailable;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPrimary_category() {
		return primary_category;
	}
	public void setPrimary_category(String primary_category) {
		this.primary_category = primary_category;
	}
	public String getSecondary_category() {
		return secondary_category;
	}
	public void setSecondary_category(String secondary_category) {
		this.secondary_category = secondary_category;
	}
	public double getSeller_feedback() {
		return seller_feedback;
	}
	public void setSeller_feedback(double seller_feedback) {
		this.seller_feedback = seller_feedback;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public double getShipping_cost() {
		return shipping_cost;
	}
	public void setShipping_cost(double shipping_cost) {
		this.shipping_cost = shipping_cost;
	}
	public Timestamp getShipping_time() {
		return shipping_time;
	}
	public void setShipping_time(Timestamp shipping_time) {
		this.shipping_time = shipping_time;
	}
	public Timestamp getStart_time() {
		return start_time;
	}
	public void setStart_time(Timestamp start_time) {
		this.start_time = start_time;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getWatchcount() {
		return watchcount;
	}
	public void setWatchcount(int watchcount) {
		this.watchcount = watchcount;
	}
	public long getTimeleft() {
		return timeleft;
	}
	public void setTimeleft(long timeleft) {
		this.timeleft = timeleft;
	}
	public String getTimeleft_str() {
		return timeleft_str;
	}
	public void setTimeleft_str(String timeleft_str) {
		this.timeleft_str = timeleft_str;
	}
	
}
