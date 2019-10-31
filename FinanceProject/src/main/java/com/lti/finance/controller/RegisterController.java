package com.lti.finance.controller;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.finance.dto.RegisterData;
import com.lti.finance.entity.EmiCard;
import com.lti.finance.entity.User;
import com.lti.finance.service.CardService;
import com.lti.finance.service.FinanceService;


@Controller
public class RegisterController {

	@Autowired
	private FinanceService fs;

	
	@Autowired
	private CardService cardService;
	
	@RequestMapping(path="/register.lti", method=RequestMethod.POST)
	public String register(RegisterData data,Map model){
		User user = new User();
		user.setFirstName(data.getFirstname());
		user.setLastName(data.getLastname());
		user.setUserName(data.getUsername());
		user.setDob(LocalDate.parse(data.getDOB()));
		user.setPhoneNo(data.getPhoneno());
		user.setEmail(data.getEmail());
		user.setPassword(data.getPassword());
		user.setAddress(data.getAddress());
		user.setBankName(data.getBank());
		user.setAccountNo(data.getAcno());
		user.setIfsc(data.getIfsc());
		user.setActivationDate(LocalDate.now());
		
		EmiCard emiCard = new EmiCard();
		emiCard.setCardLimit(cardService.checkCardType(data.getCardType()));
		emiCard.setActivationDate(LocalDate.now());
		emiCard.setCardType(data.getCardType());
		emiCard.setExpiryDate(LocalDate.now().plusYears(4));
		emiCard.setCardstatus("inactive");
		emiCard.setCreditUsed(0);
		emiCard.setComments("Thank-you for Using Service");
		emiCard.setUser(user);
		user.setEmiCard(emiCard);
		fs.registerUser(user);
		return "registrationsuccessful.jsp";
	}
}
