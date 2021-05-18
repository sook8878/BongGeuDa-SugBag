package com.bonggeuda.sugbag.model.dto;

import java.sql.Date;

public class AccomDTO {

	private int accomoNo; 		// 숙소번호
	private int ownerNo; 		// 업체번호
	private String accomoName; 	// 숙소명
	private String ceoName; 	// 대표명
	private String accomoType; 	// 업종
	private String registNo; 	// 사업자번호
	private String address; 	// 숙소주소
	private String email; 		// 세금계산서이메일
	private String homepage; 	// 홈페이지 주소
	private String facility;	// 편의시설
	private String path; 		// 오시는길
	private String near; 		// 주변정보
	private String rule; 		// 이용규칙
	private String parking; 	// 주자장
	private String checkIn; 	// 체크인
	private String checkOut; 	// 체크아웃
	private Date peakStart; 	// 성수기시작일
	private Date peakEnd; 		// 성수기종료일

	public AccomDTO() {
		super();
	}

	public AccomDTO(int accomoNo, int ownerNo, String accomoName, String ceoName, String accomoType, String registNo,
			String address, String email, String homepage, String facility, String path, String near, String rule,
			String parking, String checkIn, String checkOut, Date peakStart, Date peakEnd) {
		super();
		this.accomoNo = accomoNo;
		this.ownerNo = ownerNo;
		this.accomoName = accomoName;
		this.ceoName = ceoName;
		this.accomoType = accomoType;
		this.registNo = registNo;
		this.address = address;
		this.email = email;
		this.homepage = homepage;
		this.facility = facility;
		this.path = path;
		this.near = near;
		this.rule = rule;
		this.parking = parking;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.peakStart = peakStart;
		this.peakEnd = peakEnd;
	}

	public int getAccomoNo() {
		return accomoNo;
	}

	public void setAccomoNo(int accomoNo) {
		this.accomoNo = accomoNo;
	}

	public int getOwnerNo() {
		return ownerNo;
	}

	public void setOwnerNo(int ownerNo) {
		this.ownerNo = ownerNo;
	}

	public String getAccomoName() {
		return accomoName;
	}

	public void setAccomoName(String accomoName) {
		this.accomoName = accomoName;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getAccomoType() {
		return accomoType;
	}

	public void setAccomoType(String accomoType) {
		this.accomoType = accomoType;
	}

	public String getRegistNo() {
		return registNo;
	}

	public void setRegistNo(String registNo) {
		this.registNo = registNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getFacility() {
		return facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getNear() {
		return near;
	}

	public void setNear(String near) {
		this.near = near;
	}

	public String getRule() {
		return rule;
	}

	public void setRule(String rule) {
		this.rule = rule;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public Date getPeakStart() {
		return peakStart;
	}

	public void setPeakStart(Date peakStart) {
		this.peakStart = peakStart;
	}

	public Date getPeakEnd() {
		return peakEnd;
	}

	public void setPeakEnd(Date peakEnd) {
		this.peakEnd = peakEnd;
	}

	@Override
	public String toString() {
		return "AccomDTO [accomoNo=" + accomoNo + ", ownerNo=" + ownerNo + ", accomoName=" + accomoName + ", ceoName="
				+ ceoName + ", accomoType=" + accomoType + ", registNo=" + registNo + ", address=" + address
				+ ", email=" + email + ", homepage=" + homepage + ", facility=" + facility + ", path=" + path
				+ ", near=" + near + ", rule=" + rule + ", parking=" + parking + ", checkIn=" + checkIn + ", checkOut="
				+ checkOut + ", peakStart=" + peakStart + ", peakEnd=" + peakEnd + "]";
	}
}
