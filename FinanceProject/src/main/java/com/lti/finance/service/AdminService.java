package com.lti.finance.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lti.finance.dao.UserDao;
import com.lti.finance.entity.User;


@Service
public class AdminService {
	@Autowired
	private UserDao userDao;
	

	public List<User>fetchAllEmicardUser(){
		List<User> Users = userDao.fetchAllEmicardUser();
		return Users;
}
}
