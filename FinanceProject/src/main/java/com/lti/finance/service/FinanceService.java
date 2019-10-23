package com.lti.finance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.finance.dao.FinanceDao;
import com.lti.finance.dao.GenericDao;
import com.lti.finance.entity.Product;
import com.lti.finance.entity.User;

@Service
public class FinanceService {
	
	@Autowired
	private GenericDao dao;
	@Autowired
	private FinanceDao fdao;
	
	public void addProduct(Product product) {
		dao.upsert(product);
	}
	
	public void registerUser(User user) {
		dao.upsert(user);
	}
	
	public Product fetchProductById(int id) {
		Product product = (Product) dao.fetchById(Product.class, id);
		
		return product;
	}
	
//	public boolean validateUser(String username,String password) {
//		User user = (User)fdao.fetchByUsername(username);
//		
//		if(password.equals(user.getPassword()))
//			return true;
//		else
//			return false;
//	
//	}
	
	public List<Product>fetchAllProduct(){
		List<Product> Products = fdao.fetchAllProduct();
		return Products;
	}
}
