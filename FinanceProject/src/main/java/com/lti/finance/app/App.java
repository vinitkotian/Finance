package com.lti.finance.app;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lti.finance.entity.Product;
import com.lti.finance.service.FinanceService;

public class App {
	
	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("mvc-servlet.xml");
		FinanceService fs=(FinanceService) context.getBean("ss");
			
	

			Product product = new Product();
			product.setProductName("iphone");
			product.setProductDetails("128GB");
			product.setProductPrice(120000);
			product.setProductIMG("iphone11");
			fs.addProduct(product);
		

		
	}
}
