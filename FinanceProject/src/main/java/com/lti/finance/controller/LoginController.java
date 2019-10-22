package com.lti.finance.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.finance.dto.LoginData;
import com.lti.finance.entity.User;
import com.lti.finance.service.LoginService;

@Controller
@SessionAttributes("user")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
@RequestMapping(path="/login.lti",method=RequestMethod.POST)
	public String checkUser(LoginData data,Map model){
		User user = loginService.getUserNamePass(data.getUserName(), data.getPassword());
		model.put("user", user);
			if((user.getUserName().equals(data.getUserName())) &&(user.getPassword().equals(data.getPassword())) )
			return "indexlogin.jsp";
		else 
			return "login.jsp";
}

}
