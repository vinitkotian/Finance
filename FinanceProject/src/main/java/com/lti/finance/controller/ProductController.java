package com.lti.finance.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.finance.dto.ProductData;
import com.lti.finance.entity.Product;
import com.lti.finance.service.FinanceService;

@Controller
public class ProductController {
	
	@Autowired
	private FinanceService fs;
	
	@RequestMapping(path="/add.lti", method=RequestMethod.POST)
	public String add(ProductData data,Map model) {
		Product product = new Product();
		product.setProductName(data.getPname());
		product.setProductDetails(data.getPdetails());
		product.setProductPrice(data.getPrice());
		product.setProductIMG(data.getPimg());
		System.out.println(product.getProductName());
	
		fs.addProduct(product);
		return "confirmation.jsp";
	
}
}