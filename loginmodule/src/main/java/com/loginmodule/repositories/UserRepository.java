package com.loginmodule.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.loginmodule.entities.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	

}
