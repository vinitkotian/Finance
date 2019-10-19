package com.lti.finance.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "PRODUCT")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator="s1" )
	@SequenceGenerator(name="s1",sequenceName="prod_seq",allocationSize=1)
	@Column(name = "PRODUCT_ID")
	private int productId;
	
	@Column(name = "PRODUCT_NAME")
	private String productName;
	
	@Column(name = "PRODUCT_PRICE")
	private double productPrice;
	
	@Column(name = "PRODUCT_DETAILS")
	private String productDetails;
	
	@Column(name = "PRODUCT_IMG")
	private String productIMG;
	
	@OneToMany
	private Set<Transaction> transaction;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDetails() {
		return productDetails;
	}

	public void setProductDetails(String productDetails) {
		this.productDetails = productDetails;
	}

	public String getProductIMG() {
		return productIMG;
	}

	public void setProductIMG(String productIMG) {
		this.productIMG = productIMG;
	}
}
