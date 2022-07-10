package com.gl.srms.dao;

import com.gl.srms.entity.User;

public interface UserDao {
	
	public User findUserByName(String username);

}
