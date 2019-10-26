package com.lti.finance.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.finance.dao.ForgotPasswordDAO;

import com.lti.finance.dto.ForgotPasswordDTO;
import com.lti.finance.entity.User;
import com.lti.finance.Exception.ForgotPasswordException;

@Service
@SessionAttributes("forgotPasswordDTO")
public class ForgotPasswordService {

	@Autowired
	private ForgotPasswordDAO forgotPasswordDao;

	int otp;

	public int checkPhoneNo(ForgotPasswordDTO forgotPasswordDTO) {
		// return loginDAO.fetchQuestion(loginDTO);
		System.out.println("in service");
		int count = forgotPasswordDao.fetchCountOfUser(forgotPasswordDTO);
		System.out.println("after service");
		return count;
	}

	public void resetPassword(ForgotPasswordDTO forgotPasswordDTO) {
		forgotPasswordDao.updatePassword(forgotPasswordDTO);
	}

	public int sendOtp(long phoneno) throws ForgotPasswordException, IOException {

		try {
			// Construct data
			otp = (int) (Math.random() * 9000) + 1000;
			
			String apiKey = "apikey=" + URLEncoder.encode("0AOQOdzUHJ8-GhIcwKKQcmMd53Abm7WnQnqSW36iFM", "UTF-8");
			String message = "&message=" + URLEncoder.encode("OTP to Change your password is " + otp, "UTF-8");
			String sender = "&sender=" + URLEncoder.encode("TXTLCL", "UTF-8");
			String number = "&numbers=" + URLEncoder.encode("91" + phoneno, "UTF-8");

			// Send data
			String data = "https://api.textlocal.in/send/?" + apiKey + number + message + sender;
			URL url = new URL(data);
			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);

			// Get the response
			BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			String sResult = "";
			while ((line = rd.readLine()) != null) {
				// Process line...
				sResult = sResult + line + " ";
			
			}
			rd.close();
			return otp;

		} catch (ForgotPasswordException e) {
			throw(new ForgotPasswordException("OTP not generated please try to generate !!!! :)"));
		}
	}
}
