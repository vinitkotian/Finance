package com.lti.finance.controller;
import java.time.LocalDate;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.finance.dto.RegisterData;
import com.lti.finance.entity.User;
import com.lti.finance.service.FinanceService;


@Controller
public class RegisterController {

	@Autowired
	private FinanceService fs;
	
	@RequestMapping(path="/register.lti", method=RequestMethod.POST)
	
	public String register(RegisterData data,Map model){
		User user = new User();
		user.setAccountNo(data.getAcno());
		user.setFirstName(data.getFirstname());
		user.setLastName(data.getLastname());
		user.setUserName(data.getUsername());
		user.setDob(data.getDOB());
		user.setPhoneNo(data.getPhoneno());
		user.setEmail(data.getEmail());
		user.setPassword(data.getPassword());
		user.setBankName(data.getBank());
		user.setIfsc(data.getIfsc());
		user.setActivationDate(LocalDate.now());
		
		fs.register(user);
		return "confirmation.jsp";
	}
}
