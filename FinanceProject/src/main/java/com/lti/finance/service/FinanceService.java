package com.lti.finance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.finance.dao.FinanceDao;
import com.lti.finance.dao.GenericDao;
import com.lti.finance.entity.EmiCard;
import com.lti.finance.entity.Product;
import com.lti.finance.entity.User;

@Service
public class FinanceService {
	
	@Autowired
	private GenericDao genericDao;
	@Autowired
	private FinanceDao financeDao;
	
	public void addProduct(Product product) {
		genericDao.upsert(product);
	}
	
	public void registerUser(User user) {
		genericDao.upsert(user);
	}

	public Product fetchProductById(int id) {
		Product product = (Product) genericDao.fetchById(Product.class, id);	
		return product;
	}

	public List<Product>fetchAllProduct(){
		List<Product> Products = financeDao.fetchAllProduct();
		return Products;
	}
}
