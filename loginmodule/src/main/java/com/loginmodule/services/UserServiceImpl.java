package com.loginmodule.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loginmodule.entities.User;
import com.loginmodule.repositories.UserRepository;
@Service
public class UserServiceImpl implements UserService{

	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public boolean registerUser(User user) {
		try {
			userRepository.save(user);
		
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;		
		
	}

}
