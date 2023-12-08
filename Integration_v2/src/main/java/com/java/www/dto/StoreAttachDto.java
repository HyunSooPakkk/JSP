package com.java.www.dto;

import java.sql.Timestamp;

public class StoreAttachDto {

	int storeid; 
	String filename ;
	int filesize;
	Timestamp regdate;
	
	StoreAttachDto(){}

	public StoreAttachDto(int storeid, String filename, int filesize, Timestamp regdate) {
		super();
		this.storeid = storeid;
		this.filename = filename;
		this.filesize = filesize;
		this.regdate = regdate;
	}

	public int getStoreid() {
		return storeid;
	}

	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getFilesize() {
		return filesize;
	}

	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	

	
}
