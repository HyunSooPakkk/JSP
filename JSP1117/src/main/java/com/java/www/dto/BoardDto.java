package com.java.www.dto;

import java.sql.Timestamp;

public class BoardDto {
	public BoardDto() {}
	public BoardDto(String btitle, String bcontent, String id, String bfile) {
		this.btitle = btitle;
		this.bcont = bcont;
		this.id = id;
		this.bfile = bfile;
	}
	public BoardDto(int bno, String btitle, String bcontent, String id, String bfile) {
		this.bno = bno;
		this.btitle = btitle;
		this.bcont = bcont;
		this.id = id;
		this.bfile = bfile;
	}
	public BoardDto(int bno, String btitle, String bcontent, Timestamp bdate, String id, int bgroup, int bstep,
			int bindent, int bhit, String bfile) {
		this.bno = bno;
		this.btitle = btitle;
		this.bcont = bcont;
		this.bdate = bdate;
		this.id = id;
		this.bgroup = bgroup;
		this.bstep = bstep;
		this.bindent = bindent;
		this.bhit = bhit;
		this.bfile = bfile;
	}
	private int bno;
	private String btitle;
	private String bcont;
	private Timestamp bdate;
	private String id;
	private int bgroup;
	private int bstep;
	private int bindent;
	private int bhit;
	private String bfile;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcont;
	}
	public void setBcontent(String bcont) {
		this.bcont = bcont;
	}
	public Timestamp getBdate() {
		return bdate;
	}
	public void setBdate(Timestamp bdate) {
		this.bdate = bdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBgroup() {
		return bgroup;
	}
	public void setBgroup(int bgroup) {
		this.bgroup = bgroup;
	}
	public int getBstep() {
		return bstep;
	}
	public void setBstep(int bstep) {
		this.bstep = bstep;
	}
	public int getBindent() {
		return bindent;
	}
	public void setBindent(int bindent) {
		this.bindent = bindent;
	}
	public int getBhit() {
		return bhit;
	}
	public void setBhit(int bhit) {
		this.bhit = bhit;
	}
	public String getBfile() {
		return bfile;
	}
	public void setBfile(String bfile) {
		this.bfile = bfile;
	}

}
