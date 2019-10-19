package com.lti.finance.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.lti.finance.entity.Product;
import com.lti.finance.service.FinanceService;

public class FinanceTest {
	
	@Autowired
	public FinanceService fs;
	
	@Test
	public void productAddTest() {

		Product product = new Product();
		product.setProductName("iphone");
		product.setProductDetails("128GB");
		product.setProductPrice(120000);
		product.setProductIMG("iphone11");
		fs.addProduct(product);
	}

}
