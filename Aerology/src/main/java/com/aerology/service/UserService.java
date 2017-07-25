package com.aerology.service;

import com.aerology.model.User;

public interface UserService {

	void save(User user);
	
	User findByUsername(String username);
}
