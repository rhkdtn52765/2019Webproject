package com.jica.springshoppingmall.beans;

public class CartBean {
	private int cart_idx;
	private int cart_status;
	private int cart_product_idx;
	private String cart_date;
	private int cart_user_idx;
	
	public int getCart_idx() {
		return cart_idx;
	}
	public void setCart_idx(int cart_idx) {
		this.cart_idx = cart_idx;
	}
	public int getCart_status() {
		return cart_status;
	}
	public void setCart_status(int cart_status) {
		this.cart_status = cart_status;
	}
	public int getCart_product_idx() {
		return cart_product_idx;
	}
	public void setCart_product_idx(int cart_product_idx) {
		this.cart_product_idx = cart_product_idx;
	}
	public String getCart_date() {
		return cart_date;
	}
	public void setCart_date(String cart_date) {
		this.cart_date = cart_date;
	}
	public int getCart_user_idx() {
		return cart_user_idx;
	}
	public void setCart_user_idx(int cart_user_idx) {
		this.cart_user_idx = cart_user_idx;
	}
	
	
}
