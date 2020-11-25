package com.jica.springshoppingmall.beans;

public class BoardContentBean {
	private int board_content_idx;
	private String board_content_subject;
	private String board_content_text;
	private int board_content_status;
	private int board_category_idx;
	private String board_content_date;
	private String board_content_ip;
	private int board_idx;
	private int board_answer_chk;
	private int board_writer_idx;
	private String board_writer_name;

	public int getBoard_category_idx() {
		return board_category_idx;
	}
	public void setBoard_category_idx(int board_category_idx) {
		this.board_category_idx = board_category_idx;
	}
	public String getBoard_writer_name() {
		return board_writer_name;
	}
	public void setBoard_writer_name(String board_writer_name) {
		this.board_writer_name = board_writer_name;
	}
	public int getBoard_content_idx() {
		return board_content_idx;
	}
	public void setBoard_content_idx(int board_content_idx) {
		this.board_content_idx = board_content_idx;
	}
	public String getBoard_content_subject() {
		return board_content_subject;
	}
	public void setBoard_content_subject(String board_content_subject) {
		this.board_content_subject = board_content_subject;
	}
	public String getBoard_content_text() {
		return board_content_text;
	}
	public void setBoard_content_text(String board_content_text) {
		this.board_content_text = board_content_text;
	}
	public int getBoard_content_status() {
		return board_content_status;
	}
	public void setBoard_content_status(int board_content_status) {
		this.board_content_status = board_content_status;
	}
	public String getBoard_content_date() {
		return board_content_date;
	}
	public void setBoard_content_date(String board_content_date) {
		this.board_content_date = board_content_date;
	}
	public String getBoard_content_ip() {
		return board_content_ip;
	}
	public void setBoard_content_ip(String board_content_ip) {
		this.board_content_ip = board_content_ip;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public int getBoard_answer_chk() {
		return board_answer_chk;
	}
	public void setBoard_answer_chk(int board_answer_chk) {
		this.board_answer_chk = board_answer_chk;
	}
	public int getBoard_writer_idx() {
		return board_writer_idx;
	}
	public void setBoard_writer_idx(int board_writer_idx) {
		this.board_writer_idx = board_writer_idx;
	}
	
	
}
