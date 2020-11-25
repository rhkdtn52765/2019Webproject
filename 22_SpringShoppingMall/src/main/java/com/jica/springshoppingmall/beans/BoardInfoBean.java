package com.jica.springshoppingmall.beans;

public class BoardInfoBean {
	private int board_info_idx;
	private String board_info_name;
	private int board_info_status;
	private int board_info_category_idx;
	private int board_answer_chk;
	private int board_user_write_chk;
	
	public int getBoard_info_idx() {
		return board_info_idx;
	}
	public void setBoard_info_idx(int board_info_idx) {
		this.board_info_idx = board_info_idx;
	}
	public String getBoard_info_name() {
		return board_info_name;
	}
	public void setBoard_info_name(String board_info_name) {
		this.board_info_name = board_info_name;
	}
	public int getBoard_info_status() {
		return board_info_status;
	}
	public void setBoard_info_status(int board_info_status) {
		this.board_info_status = board_info_status;
	}
	public int getBoard_info_category_idx() {
		return board_info_category_idx;
	}
	public void setBoard_info_category_idx(int board_info_category_idx) {
		this.board_info_category_idx = board_info_category_idx;
	}
	public int getBoard_answer_chk() {
		return board_answer_chk;
	}
	public void setBoard_answer_chk(int board_answer_chk) {
		this.board_answer_chk = board_answer_chk;
	}
	public int getBoard_user_write_chk() {
		return board_user_write_chk;
	}
	public void setBoard_user_write_chk(int board_user_write_chk) {
		this.board_user_write_chk = board_user_write_chk;
	}
	
	
}
