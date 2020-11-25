package com.jica.springshoppingmall.beans;

public class BannerBean {
	private int banner_idx;
	private String banner_image_file;
	private int banner_status;
	private String banner_url;
	
	public int getBanner_idx() {
		return banner_idx;
	}
	public void setBanner_idx(int banner_idx) {
		this.banner_idx = banner_idx;
	}
	public String getBanner_image_file() {
		return banner_image_file;
	}
	public void setBanner_image_file(String banner_image_file) {
		this.banner_image_file = banner_image_file;
	}
	public int getBanner_status() {
		return banner_status;
	}
	public void setBanner_status(int banner_status) {
		this.banner_status = banner_status;
	}
	public String getBanner_url() {
		return banner_url;
	}
	public void setBanner_url(String banner_url) {
		this.banner_url = banner_url;
	}
	
	
}
