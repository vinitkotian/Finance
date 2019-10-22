package com.lti.finance.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.finance.dto.LoginData;
import com.lti.finance.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
@RequestMapping(path="/login.lti",method=RequestMethod.POST)
	
	public String checkUser(LoginData data,Map model){
	System.out.println(data.getUserName()+" "+data.getPassword());
		boolean check = loginService.validateUser(data.getUserName(), data.getPassword());
		System.out.println(check);
		
		if(check==true)
			return "confirmation.jsp";
		else 
			return "login.jsp";
		
	
}

}
