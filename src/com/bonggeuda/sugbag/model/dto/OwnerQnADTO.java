package com.bonggeuda.sugbag.model.dto;

import java.sql.Date;

public class OwnerQnADTO {
	
	private int qnaAo;
	private String title;
	private String content;
	private Date writeDate;
	private String answerYN;
	private int accomoNo;
	private int userNo;
	
	public OwnerQnADTO() {}

	public OwnerQnADTO(int qnaAo, String title, String content, Date writeDate, String answerYN, int accomoNo,
			int userNo) {
		super();
		this.qnaAo = qnaAo;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.answerYN = answerYN;
		this.accomoNo = accomoNo;
		this.userNo = userNo;
	}

	public int getQnaAo() {
		return qnaAo;
	}

	public void setQnaAo(int qnaAo) {
		this.qnaAo = qnaAo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public String getAnswerYN() {
		return answerYN;
	}

	public void setAnswerYN(String answerYN) {
		this.answerYN = answerYN;
	}

	public int getAccomoNo() {
		return accomoNo;
	}

	public void setAccomoNo(int accomoNo) {
		this.accomoNo = accomoNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "OwnerQnADTO [qnaAo=" + qnaAo + ", title=" + title + ", content=" + content + ", writeDate=" + writeDate
				+ ", answerYN=" + answerYN + ", accomoNo=" + accomoNo + ", userNo=" + userNo + "]";
	}
}
