package com.lti.finance.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.finance.entity.Product;
import com.lti.finance.entity.Transaction;
import com.lti.finance.entity.User;
import com.lti.finance.service.TransactionService;

@Controller
@SessionAttributes({"user","transaction","product"})
public class TransactionController {
	
	@Autowired
	TransactionService tservice;
	
	@RequestMapping(path="/buyNow.lti",method=RequestMethod.POST)
	public String buyNow(@RequestParam("emiScheme") int scheme,HttpServletRequest request,ModelMap model){
		User user =(User)request.getSession().getAttribute("user");
		Product product =(Product)request.getSession().getAttribute("product");
		System.out.println("user id"+user.getUserName()+"product"+product.getProductName()+"sc"+scheme);
		boolean valid=tservice.buyNow(user.getUserId(), product.getProductId(),scheme);
		
		if(valid==true){
		return "successfullpayment.jsp";	
		}
		return "buyProducts.jsp";
		
	}
	
	@RequestMapping(path="/emiPayment",method=RequestMethod.POST)
	public boolean emiPayment(HttpServletRequest request,Map model){
		User user =(User)request.getSession().getAttribute("user");
		Transaction transaction =(Transaction)request.getSession().getAttribute("transaction");
		boolean valid=tservice.emiPayment(transaction.getTransactionId(), user.getUserId());
		System.out.println(valid);
		if(valid==true){
		return true;	
		}
		return false;
	}

}
