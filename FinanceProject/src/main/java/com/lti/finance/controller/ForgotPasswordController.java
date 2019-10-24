package com.lti.finance.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.finance.dto.ForgotPasswordDTO;
import com.lti.finance.Exception.ForgotPasswordException;
import com.lti.finance.service.ForgotPasswordService;
import com.lti.finance.service.LoginService;

@Controller
@SessionAttributes("forgotPasswordDTO")
public class ForgotPasswordController {
	
	@Autowired
	private ForgotPasswordService forgotPasswordService;

	@RequestMapping(path = "/forgotpassword.lti", method = RequestMethod.POST)
	public String checkPhoneNo(ForgotPasswordDTO forgotPasswordDTO, Map model) throws ForgotPasswordException, IOException {
		System.out.println("in controller");
		int count = forgotPasswordService.checkPhoneNo(forgotPasswordDTO);	
		if(count==1){
			int otp = forgotPasswordService.sendOtp(forgotPasswordDTO.getPhoneNo());
			forgotPasswordDTO.setOtp(otp);
			model.put("forgotPasswordDTO",forgotPasswordDTO);
			return "forgot2.jsp";
		}	
		else 
			return "forgot1.jsp";
		
	
	}

	@RequestMapping(path = "/otp.lti", method = RequestMethod.POST)
	public String validateOtp(@RequestParam("otp") int otp,HttpServletRequest request, Map model) {
		
		ForgotPasswordDTO forgotPasswordDTO = (ForgotPasswordDTO) request.getSession().getAttribute("forgotPasswordDTO");
		if(otp==forgotPasswordDTO.getOtp())
			return "forgot3.jsp";
		else 
			return "forgot2.jsp";
	}
	@RequestMapping(path="/update.lti", method=RequestMethod.POST)
	public String resetPassword(ForgotPasswordDTO forgotPasswordDTO) {
		
	    forgotPasswordService.resetPassword(forgotPasswordDTO);
		return "redirect:/login.jsp";
	}
	  
}
