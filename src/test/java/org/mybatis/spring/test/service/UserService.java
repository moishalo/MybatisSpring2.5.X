package org.mybatis.spring.test.service;

import java.util.List;

import org.mybatis.spring.test.mapper.UserMapper;
import org.mybatis.spring.test.model.User;

/**
 * @Title: UserService.java
 * @Package com.moishalo.s_mybatis
 * @Description: TODO(添加描述)
 * @author moishalo.zhang moishalo.zhang@gmail.com
 * @date 2013年7月11日 下午2:30:16
 * @version V1.0
 */
public class UserService {
	private UserMapper userMapper;

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	public List<User> selectAll(){
		return userMapper.selectAll();
	}
}
