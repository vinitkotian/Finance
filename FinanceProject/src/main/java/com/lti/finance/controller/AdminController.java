package com.lti.finance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.finance.dto.LoginData;
import com.lti.finance.entity.User;
import com.lti.finance.service.LoginService;

@Controller
public class AdminController {
	
	//@Autowired
	//private LoginService loginService;

	@RequestMapping(path="/adminverify.lti",method=RequestMethod.POST)
	public String checkAdmin(LoginData data,ModelMap model) throws NullPointerException {
		try {		
			//User user = loginService.getUserNamePass(data.getUserName(), data.getPassword());
				//model.put("user", user);
			//System.out.println(data.getUserName() + " hii " +data.getPassword());
				if(("admin".equals(data.getUserName())) &&("admin".equals(data.getPassword())))
					return "userverification.jsp";
				else
					model.put("invalidUser","Enter Valid Credentials!!");
					return "loginasadmin.jsp";
		}
		catch(Exception e) {
			model.put("invalidUser","Enter Valid Credentials!!");
			return "loginasadmin.jsp";
		}	
		
		
	}
	@RequestMapping(path="/adminlogin.lti",method=RequestMethod.GET)
	public String adminlogin(ModelMap model){
					return "loginasadmin.jsp";
		}	
}
