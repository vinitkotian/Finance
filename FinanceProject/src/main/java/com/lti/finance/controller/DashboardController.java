package com.lti.finance.controller;

import org.apache.tomcat.jni.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.finance.dto.LoginData;
@Controller
@SessionAttributes({"user"})
public class DashboardController {
	
	
	@RequestMapping(path="dashboard.lti",method=RequestMethod.GET)
	public String checkUserSession(LoginData data,ModelMap model) {//change name
			model.get("user");
			//System.out.println(user.);
			//System.out.println("ididi"+userId);
//		    model.put("user", user);
			return "dashboard.jsp";
	}
	
	

	
}
