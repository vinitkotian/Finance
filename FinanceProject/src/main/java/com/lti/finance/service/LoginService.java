package com.lti.finance.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.finance.dao.FinanceDao;
import com.lti.finance.entity.User;

@Service
public class LoginService {
	@Autowired
	private FinanceDao fdao;
	
	public User getUserNamePass(String username,String password){
		User user = fdao.fetchByUsername(username);
//		System.out.println("fd"+user.getUserName()+""+user.getPassword());
//		if(password.equals(user.getPassword()) && username.equals(user.getUserName())) {
//			return true;
//		}
//		else{
//			return false;
//		}
		return user;
		
	
	
	}
}

