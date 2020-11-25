package com.jica.springshoppingmall.beans;

public class SearchBean {
	
	private int min;
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	public String getSearch_product() {
		return search_product;
	}
	public void setSearch_product(String search_product) {
		this.search_product = search_product;
	}
	private int max;
	private String search_product;
}
