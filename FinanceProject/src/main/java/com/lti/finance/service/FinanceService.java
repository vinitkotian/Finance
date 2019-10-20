package com.lti.finance.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.finance.dao.GenericDao;
import com.lti.finance.entity.Product;
import com.lti.finance.entity.User;

@Service("ss")
public class FinanceService {
	
	@Autowired
	private GenericDao dao;
	
	public void addProduct(Product product) {
		dao.upsert(product);
	}
	
	public void register(User user) {
		dao.upsert(user);
	}

}
