package com.lti.finance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.finance.dto.LoginData;
import com.lti.finance.service.TransactionService;
@Controller
@SessionAttributes({"user"})
public class DashboardController {
	
	@Autowired
	private TransactionService transactionService;
	
	@RequestMapping(path="/dashboard.lti",method=RequestMethod.GET)
	public String userDashboard(ModelMap model) {
			model.get("user");
			return "dashboard.jsp";
	}
	
	@RequestMapping(path="/emiPayment.lti",method=RequestMethod.POST)
	public String emiPayment(LoginData data,ModelMap model,@RequestParam("emiNo") int emiNo,@RequestParam("installmentNo") int installmentNo) {
			model.get("user");
			boolean status=transactionService.emiPayment(emiNo, installmentNo);
			return "successfullpayment.jsp";
			
	}
	

	
}
