package com.jica.springshoppingmall.beans;

public class ProductBean {
	private int product_idx;
	private int product_status;
	private String product_image_file;
	private String product_name;
	private String product_price;
	private int product_category_idx;
	private String product_info_image_file;
	private int product_sales_cnt;

	private String product_image_link;
	
	
	public String getProduct_image_link() {
		return product_image_link;
	}
	public void setProduct_image_link(String product_image_link) {
		this.product_image_link = product_image_link;
	}
	public int getProduct_idx() {
		return product_idx;
	}
	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}
	public int getProduct_status() {
		return product_status;
	}
	public void setProduct_status(int product_status) {
		this.product_status = product_status;
	}
	public String getProduct_image_file() {
		return product_image_file;
	}
	public void setProduct_image_file(String product_image_file) {
		this.product_image_file = product_image_file;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public int getProduct_category_idx() {
		return product_category_idx;
	}
	public void setProduct_category_idx(int product_category_idx) {
		this.product_category_idx = product_category_idx;
	}
	public String getProduct_info_image_file() {
		return product_info_image_file;
	}
	public void setProduct_info_image_file(String product_info_image_file) {
		this.product_info_image_file = product_info_image_file;
	}
	public int getProduct_sales_cnt() {
		return product_sales_cnt;
	}
	public void setProduct_sales_cnt(int product_sales_cnt) {
		this.product_sales_cnt = product_sales_cnt;
	}
	
	
}
