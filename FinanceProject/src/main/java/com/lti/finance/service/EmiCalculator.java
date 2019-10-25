package com.lti.finance.service;

import org.springframework.stereotype.Component;

@Component
public class EmiCalculator {

	public double emiCalculate(double amount,int months){
		return amount/months;
	}
}
