package org.mybatis.spring.test.model;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

/**
 * @Title: Hello.java
 * @Package com.moishalo.s_mybatis.model
 * @Description: TODO(添加描述)
 * @author moishalo.zhang moishalo.zhang@gmail.com
 * @date 2013-7-5 下午3:46:05
 * @version V1.0
 */
public class Hello {
	private String id;
	private String pString;
	private Byte pByte;
	private Short pShort;
	private Integer pInt;
	private Long pLong;
	private Float pFloat;
	private Double pDouble;
	private BigDecimal pBigDecimal;
	private Boolean pBoolean;
	private java.util.Date pUtilDate;
	private Date pSqlDate;
	private Time pSqlTime;
	private Timestamp pSqlTimestamp;
	// private InputStream pInputStream;
	// private Reader pReader;
	// private File pFile;
	
	private byte[] pByteArray;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getpString() {
		return pString;
	}

	public void setpString(String pString) {
		this.pString = pString;
	}

	public Byte getpByte() {
		return pByte;
	}

	public void setpByte(Byte pByte) {
		this.pByte = pByte;
	}

	public Short getpShort() {
		return pShort;
	}

	public void setpShort(Short pShort) {
		this.pShort = pShort;
	}

	public Integer getpInt() {
		return pInt;
	}

	public void setpInt(Integer pInt) {
		this.pInt = pInt;
	}

	public Long getpLong() {
		return pLong;
	}

	public void setpLong(Long pLong) {
		this.pLong = pLong;
	}

	public Float getpFloat() {
		return pFloat;
	}

	public void setpFloat(Float pFloat) {
		this.pFloat = pFloat;
	}

	public Double getpDouble() {
		return pDouble;
	}

	public void setpDouble(Double pDouble) {
		this.pDouble = pDouble;
	}

	public BigDecimal getpBigDecimal() {
		return pBigDecimal;
	}

	public void setpBigDecimal(BigDecimal pBigDecimal) {
		this.pBigDecimal = pBigDecimal;
	}

	public Boolean getpBoolean() {
		return pBoolean;
	}

	public void setpBoolean(Boolean pBoolean) {
		this.pBoolean = pBoolean;
	}

	public java.util.Date getpUtilDate() {
		return pUtilDate;
	}

	public void setpUtilDate(java.util.Date pUtilDate) {
		this.pUtilDate = pUtilDate;
	}

	public Date getpSqlDate() {
		return pSqlDate;
	}

	public void setpSqlDate(Date pSqlDate) {
		this.pSqlDate = pSqlDate;
	}

	public Time getpSqlTime() {
		return pSqlTime;
	}

	public void setpSqlTime(Time pSqlTime) {
		this.pSqlTime = pSqlTime;
	}

	public Timestamp getpSqlTimestamp() {
		return pSqlTimestamp;
	}

	public void setpSqlTimestamp(Timestamp pSqlTimestamp) {
		this.pSqlTimestamp = pSqlTimestamp;
	}

	public byte[] getpByteArray() {
		return pByteArray;
	}

	public void setpByteArray(byte[] pByteArray) {
		this.pByteArray = pByteArray;
	}
}
