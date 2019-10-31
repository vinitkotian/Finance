package com.lti.finance.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.finance.Exception.DataNotFoundException;
import com.lti.finance.dto.LoginData;
import com.lti.finance.entity.User;
import com.lti.finance.service.LoginService;

@Controller
@SessionAttributes({"user","product"})
public class LoginController {

	@Autowired
	private LoginService loginService;

	@RequestMapping(path="/login.lti",method=RequestMethod.POST)
	public String checkUser(LoginData data,ModelMap model) throws NullPointerException {
		try {		
			User user = loginService.getUserNamePass(data.getUserName(), data.getPassword());
				model.put("user", user);
				
				if((user.getUserName().equals(data.getUserName())) &&(user.getPassword().equals(data.getPassword())) )
					return "indexlogin.jsp";
				else 
					model.put("invalidUser","Enter Valid Credentials!!");
					return "login.jsp";
					
		}
		catch(Exception e) {
			model.put("invalidUser","Enter Valid Credentials!!");
			return "login.jsp";
		}	
	}
	
	
	@RequestMapping(path="/home.lti",method=RequestMethod.GET)
	public String checkUserSession(ModelMap model) {
		if(model.get("user") == null)
		    return "index.jsp";
		else 
			return "indexlogin.jsp";
		
	}
	
	@RequestMapping(path="/logout.lti",method=RequestMethod.GET)
	public String invalidateSession(HttpServletRequest request,ModelMap model) {
		request.getSession().removeAttribute("user");
		request.getSession().invalidate();
		
			return "index.jsp";
		
	}
	
}
