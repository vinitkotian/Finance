package com.lti.finance.service;

import org.springframework.stereotype.Service;

@Service
public class CardService {

	public double checkCardType(String cardType) {

		if ("gold".equals(cardType))
			return 40000;
		else
			return 80000;
	}

}
