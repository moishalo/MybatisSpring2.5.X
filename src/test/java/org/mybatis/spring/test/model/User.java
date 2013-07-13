package org.mybatis.spring.test.model;

/**
 * @Title: User.java
 * @Package com.moishalo.s_mybatis.model
 * @Description: TODO(添加描述)
 * @author moishalo.zhang moishalo.zhang@gmail.com
 * @date 2013年7月11日 下午2:19:45
 * @version V1.0
 */
public class User {
	private int userId;
	private String userName;
	private String password;
	private String comment;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
}
