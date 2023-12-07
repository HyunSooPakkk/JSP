package com.java.www.dto;

import java.sql.Timestamp;

public class MemberInfoDto {
	
	public MemberInfoDto() {}
	
	private String memberid;
	private String nicname;
	private String mempw;
	private String email;
	private String address;
	private String birth_year;
	private String birth_month;
	private String birth_day;
	private Timestamp birthday;
	private String favor;
	private Timestamp regdate;
	private String picture;
	private String memrole;
	
	
	
	
	public MemberInfoDto(String memberid, String nicname, String mempw, String address) {
		
		this.memberid = memberid;
		this.nicname = nicname;
		this.mempw = mempw;
		this.address = address;
	}
	
	


	public MemberInfoDto(String memberid, String nicname, String mempw, String email, String address, Timestamp birthday,
			String favor, Timestamp regdate, String picture, String memrole) {
		
		this.memberid = memberid;
		this.nicname = nicname;
		this.mempw = mempw;
		this.email = email;
		this.address = address;
		this.birthday = birthday;
		this.favor = favor;
		this.regdate = regdate;
		this.picture = picture;
		this.memrole = memrole;
	}




	public MemberInfoDto(String memberid, String nicname, String mempw, String email, String address,
			String birth_year, String birth_month, String birth_day, Timestamp birthday) {
		this.memberid = memberid;
		this.nicname = nicname;
		this.mempw = mempw;
		this.email = email;
		this.address = address;
		this.birth_year = birth_year;
		this.birth_month = birth_month;
		this.birth_day = birth_day;
		this.birthday = birthday;
	}




	public MemberInfoDto(String memberid, String nicname, String mempw, String email, String address,
			Timestamp birthday) {
		this.memberid = memberid;
		this.nicname = nicname;
		this.mempw = mempw;
		this.email = email;
		this.address = address;
		this.birthday = birthday;
	}




	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getNicname() {
		return nicname;
	}

	public void setNicname(String nicname) {
		this.nicname = nicname;
	}

	public String getMempw() {
		return mempw;
	}

	public void setMempw(String mempw) {
		this.mempw = mempw;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getBirth_year() {
		return birth_year;
	}
	
	public void setBirth_year(String birth_year) {
		this.birth_year = birth_year;
	}
	
	public String getBirth_month() {
		return birth_month;
	}
	
	public void setBirth_month(String birth_month) {
		this.birth_month = birth_month;
	}
	
	public String getBirth_day() {
		return birth_day;
	}
	
	public void setBirth_day(String birth_day) {
		this.birth_day = birth_day;
	}
	

	public Timestamp getBirthday() {
		return birthday;
	}

	public void setBirthday(Timestamp birthday) {
		this.birthday = birthday;
	}

	public String getFavor() {
		return favor;
	}

	public void setFavor(String favor) {
		this.favor = favor;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getMemrole() {
		return memrole;
	}

	public void setMemrole(String memrole) {
		this.memrole = memrole;
	}
	
	
	
	
	
	
}//MemberInfoDto
