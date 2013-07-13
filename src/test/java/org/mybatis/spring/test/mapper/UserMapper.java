package org.mybatis.spring.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import org.mybatis.spring.test.model.User;
/**
 * @Title: UserMapper.java
 * @Package com.moishalo.s_mybatis.mapper
 * @Description:
 * @author moishalo.zhang moishalo.zhang@gmail.com
 * @date 2013年7月11日 下午2:20:28
 * @version V1.0
 */
public interface UserMapper {
	@Insert("insert into user(userName,password,comment) values(#{userName},#{password},#{comment})")
	public int insert(User user);

	@Update("update user set userName=#{userName},password=#{password},comment=#{comment} where userName=#{userName}")
	public int update(User user);

	@Delete("delete from user where userName=#{userName}")
	public int delete(String userName);

	@Select("select * from user order by userName asc")
	public List<User> selectAll();

	@Select("select count(*) c from user;")
	public int countAll();

	@Select("select * from user where userName=#{userName}")
	public User findByUserName(String userName);
}
