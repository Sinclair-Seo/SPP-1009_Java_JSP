package com.javalec.ex.dto;

import java.sql.Timestamp;

public class BDto {

	int bId;
	String bName;
	String bTitle;
	String bContent;
	Timestamp bDate;
	int bHit;
	int bGroup;
	int bStep;
	int bIndent;

	public BDto() {
		// TODO Auto-generated constructor stub
	}

	public BDto(int bId, String bName, String bTitle, String bContent, Timestamp bDate, int bHit, int bGroup, int bStep,
			int bIndent) {
		// TODO Auto-generated constructor stub
		this.bId = bId;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
		this.bHit = bHit;
		this.bGroup = bGroup;
		this.bStep = bStep;
		this.bIndent = bIndent;
	}

	/**
	 * @return the bId
	 */
	public int getbId() {
		return bId;
	}

	/**
	 * @param bId the bId to set
	 */
	public void setbId(int bId) {
		this.bId = bId;
	}

	/**
	 * @return the bName
	 */
	public String getbName() {
		return bName;
	}

	/**
	 * @param bName the bName to set
	 */
	public void setbName(String bName) {
		this.bName = bName;
	}

	/**
	 * @return the bTitle
	 */
	public String getbTitle() {
		return bTitle;
	}

	/**
	 * @param bTitle the bTitle to set
	 */
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	/**
	 * @return the bContent
	 */
	public String getbContent() {
		return bContent;
	}

	/**
	 * @param bContent the bContent to set
	 */
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	/**
	 * @return the bDate
	 */
	public Timestamp getbDate() {
		return bDate;
	}

	/**
	 * @param bDate the bDate to set
	 */
	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}

	/**
	 * @return the bHit
	 */
	public int getbHit() {
		return bHit;
	}

	/**
	 * @param bHit the bHit to set
	 */
	public void setbHit(int bHit) {
		this.bHit = bHit;
	}

	/**
	 * @return the bGroup
	 */
	public int getbGroup() {
		return bGroup;
	}

	/**
	 * @param bGroup the bGroup to set
	 */
	public void setbGroup(int bGroup) {
		this.bGroup = bGroup;
	}

	/**
	 * @return the bStep
	 */
	public int getbStep() {
		return bStep;
	}

	/**
	 * @param bStep the bStep to set
	 */
	public void setbStep(int bStep) {
		this.bStep = bStep;
	}

	/**
	 * @return the bIndent
	 */
	public int getbIndent() {
		return bIndent;
	}

	/**
	 * @param bIndent the bIndent to set
	 */
	public void setbIndent(int bIndent) {
		this.bIndent = bIndent;
	}

}
