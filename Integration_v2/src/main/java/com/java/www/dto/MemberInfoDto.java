package com.java.www.dto;

import java.sql.Timestamp;

public class MemberInfoDto {
	
	private String memberId;
	private String NicName;
	private String mempw;
	private String address;
	private Timestamp birthday;
	private String favor;
	private Timestamp regDate;
	private String picture;
	private String memrole;
	private String email;
	
	
	public MemberInfoDto() {}
	
	
	public MemberInfoDto(String memberId, String NicName, String mempw, String address, String email, Timestamp birthday) {
		this.memberId = memberId;
		this.NicName = NicName;
		this.mempw = mempw;
		this.address = address;
		this.email = email;
		this.birthday = birthday;
	}

	public MemberInfoDto(String memberId, String NicName, String mempw, String address, Timestamp birthday,
			String favor, Timestamp regDate, String picture, String memrole, String email) {
		this.memberId = memberId;
		this.NicName = NicName;
		this.mempw = mempw;
		this.address = address;
		this.birthday = birthday;
		this.favor = favor;
		this.regDate = regDate;
		this.picture = picture;
		this.memrole = memrole;
		this.email = email;
	}


public MemberInfoDto(String memberid, String NicName, String mempw, String address) {
		
		this.memberId = memberid;
		this.NicName = NicName;
		this.mempw = mempw;
		this.address = address;
	}
	

public MemberInfoDto(String memberid, String NicName, String mempw, String email, String address, Timestamp birthday,
		String favor, Timestamp regdate, String picture, String memrole) {
	
	this.memberId = memberid;
	this.NicName = NicName;
	this.mempw = mempw;
	this.email = email;
	this.address = address;
	this.birthday = birthday;
	this.favor = favor;
	this.regDate = regdate;
	this.picture = picture;
	this.memrole = memrole;
}



	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getNicName() {
		return NicName;
	}

	public void setNicName(String NicName) {
		this.NicName = NicName;
	}

	public String getMempw() {
		return mempw;
	}

	public void setMempw(String mempw) {
		this.mempw = mempw;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
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
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
}
