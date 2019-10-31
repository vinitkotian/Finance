package com.lti.finance.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.finance.Exception.DataNotFoundException;
import com.lti.finance.dao.FinanceDao;
import com.lti.finance.entity.User;

@Service
public class LoginService {
	@Autowired
	private FinanceDao fdao;
	
	public User getUserNamePass(String username,String password)throws DataNotFoundException{
		try {
		User user = fdao.fetchByUsername(username);
		return user;
		}catch(Exception e){
			return null;
		}
	}
}

