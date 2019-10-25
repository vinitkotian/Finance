package com.lti.finance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.finance.dao.GenericDao;
import com.lti.finance.dao.UserDao;
import com.lti.finance.dto.LoginData;
import com.lti.finance.entity.EmiCard;
import com.lti.finance.entity.Product;
import com.lti.finance.entity.User;
import com.lti.finance.service.AdminService;
import com.lti.finance.service.LoginService;

@Controller
@SessionAttributes("emiCardUser")
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	@Autowired
	private UserDao userDao;

	
	@RequestMapping(path="/adminverify.lti",method=RequestMethod.POST)
	
	
	public String checkAdmin(LoginData data,ModelMap model)  {
		List<User> emiUsers=adminService.fetchAllEmicardUser();
//		for(User u:emiUsers) {
//			System.out.println(u.getEmiCard().getCardNo());
//		}
		
		model.put("emiCardUser", emiUsers);
		if(("admin".equals(data.getUserName())) &&("admin".equals(data.getPassword())))
					return "userverification.jsp";
				else
					model.put("invalidUser","Enter Valid Credentials!!");
					return "loginasadmin.jsp";
	}
	
	@RequestMapping(path="/adminlogin.lti",method=RequestMethod.GET)
	public String adminlogin(ModelMap model){
					return "loginasadmin.jsp";
		}	
	
	
	@RequestMapping(path="/activatedeactivate.lti",method=RequestMethod.GET)
	public String activateDeactivate(ModelMap model,@RequestParam("cardStatus") int cardStatus,@RequestParam("emiuserid") int userId){
		System.out.println(cardStatus);
		System.out.println(userId);
		User user = userDao.fetchUserById(userId);
		System.out.println(user.getFirstName());
		EmiCard card = user.getEmiCard();
		
		if(cardStatus == 1) {
			System.out.println("active");
			card.setCardstatus("active");
			user.setEmiCard(card);
			userDao.upsert(user);
		}else {
			card.setCardstatus("inactive");
			user.setEmiCard(card);
			userDao.updateUser(user);
		}
	
		return "userverification.jsp";
		}

}
