package com.lti.finance.Exception;

public class DataNotFoundException extends Exception {

	public DataNotFoundException(String msg) {
		super(msg);
	}
	

	public DataNotFoundException(String msg,Throwable cause) {
		super(msg,cause);
	}
}
