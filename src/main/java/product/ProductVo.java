package product;

import java.sql.Timestamp;

import util.CommonVo;

public class ProductVo extends CommonVo{

	String itemid;
	String categoryid;
	String title;
	String conditions;
	String country;
	Timestamp endtime;
	String thumbnail;
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
	String main_category;
	int categ_boolean;
	String quantity;
	
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	public int getCateg_boolean() {
		return categ_boolean;
	}
	public void setCateg_boolean(int categ_boolean) {
		this.categ_boolean = categ_boolean;
	}
	public String getMain_category() {
		return main_category;
	}
	public void setMain_category(String main_category) {
		this.main_category = main_category;
	}
	public String getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}
	public int getPage_boolean() {
		return page_boolean;
	}
	public void setPage_boolean(int page_boolean) {
		this.page_boolean = page_boolean;
	}
	public String getItemid() {
		return itemid;
	}
	public void setItemid(String itemid) {
		this.itemid = itemid;
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
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
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