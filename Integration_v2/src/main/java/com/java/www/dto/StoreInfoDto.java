package com.java.www.dto;

import java.sql.Timestamp;

public class StoreInfoDto {

	String storeId;
	String storeName;
	String memberId;
	String phone;
	String address;
	int categoryId;
	String workingTime;
	String keywordId;
	String webAddr;
	String menu;
	String menuPicture;
	String storeContent;
	int rate;
	int hit;
	int ratecounter;
	String openDate;
	
	public StoreInfoDto() {
		super();
	}

	public StoreInfoDto(String storeId, String storeName, String memberId, String phone, String address, int categoryId,
			String workingTime, String keywordId, String webAddr, String menu, String menuPicture, String openDate,
			String storeContent, int rate, int hit, int ratecounter) {
		super();
		this.storeId = storeId;
		this.storeName = storeName;
		this.memberId = memberId;
		this.phone = phone;
		this.address = address;
		this.categoryId = categoryId;
		this.workingTime = workingTime;
		this.keywordId = keywordId;
		this.webAddr = webAddr;
		this.menu = menu;
		this.menuPicture = menuPicture;
		this.openDate = openDate;
		this.storeContent = storeContent;
		this.rate = rate;
		this.hit = hit;
		this.ratecounter = ratecounter;
	}
	
	

	public StoreInfoDto(String storeId, String storeName, String phone, String address, String keywordId, String menuPicture,
			String storeContent, int rate, int hit, int ratecounter) {
		
		this.storeId = storeId;
		this.storeName = storeName;
		this.phone = phone;
		this.address = address;
		this.keywordId = keywordId;

		this.menuPicture = menuPicture;

		this.storeContent = storeContent;
		this.rate = rate;
		this.hit = hit;
		this.ratecounter = ratecounter;
	}

	public StoreInfoDto(String storeName, String memberId, int categoryId, String phone, String address, String menu, String workingTime, String storeContent, String webAddr,
			String openDate, String keywordId, String menuPicture) {
		this.storeName = storeName;
		this.memberId = memberId;
		this.phone = phone;
		this.address = address;
		this.categoryId = categoryId;
		this.workingTime = workingTime;
		this.keywordId = keywordId;
		this.webAddr = webAddr;
		this.menu = menu;
		this.menuPicture = menuPicture;
		this.openDate = openDate;
		this.storeContent = storeContent;
		this.rate = 0;
		this.hit = 0;
		this.ratecounter = 0;
	}

	public String getStoreId() {
		return storeId;
	}

	public void setStoreId(String storeId) {
		this.storeId = storeId;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getWorkingTime() {
		return workingTime;
	}

	public void setWorkingTime(String workingTime) {
		this.workingTime = workingTime;
	}

	public String getKeywordId() {
		return keywordId;
	}

	public void setKeywordId(String keywordId) {
		this.keywordId = keywordId;
	}

	public String getWebAddr() {
		return webAddr;
	}

	public void setWebAddr(String webAddr) {
		this.webAddr = webAddr;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public String getMenuPicture() {
		return menuPicture;
	}

	public void setMenuPicture(String menuPicture) {
		this.menuPicture = menuPicture;
	}

	public String getOpenDate() {
		return openDate;
	}

	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}

	public String getStoreContent() {
		return storeContent;
	}

	public void setStoreContent(String storeContent) {
		this.storeContent = storeContent;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getRatecounter() {
		return ratecounter;
	}

	public void setRatecounter(int ratecounter) {
		this.ratecounter = ratecounter;
	}
	
	
}
