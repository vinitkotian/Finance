package com.lti.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.finance.dto.LoginData;
@Controller
public class DashboardController {
	
	
	@RequestMapping(path="dashboard.lti",method=RequestMethod.GET)
	public String checkUserSession(LoginData data,ModelMap model) {//change name
		
			return "dashboard.jsp";
		
	}

}
