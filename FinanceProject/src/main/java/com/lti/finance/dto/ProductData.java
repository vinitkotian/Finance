package com.lti.finance.dto;

import org.springframework.web.multipart.MultipartFile;

public class ProductData {
	
	private String pname;
	private String pdetails;
	private Double price;
	private MultipartFile productimg;
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdetails() {
		return pdetails;
	}
	public void setPdetails(String pdetails) {
		this.pdetails = pdetails;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
	public MultipartFile getProductimg() {
		return productimg;
	}
	public void setProductimg(MultipartFile productimg) {
		this.productimg = productimg;
	}
	
	

}
