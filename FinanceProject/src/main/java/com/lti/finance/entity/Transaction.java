package com.lti.finance.entity;

import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "TRANSACTION")
public class Transaction {

	@Id
	@Column(name = "TRANSACTION_ID")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="s6")
	@SequenceGenerator(name="s6",sequenceName="transaction_seq",allocationSize=1)
	private int transactionId;

	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private User user;

	@ManyToOne
	@JoinColumn(name = "PRODUCT_ID")
	private Product product;

	@Column(name = "EMI_SCHEME")
	private int scheme;

	

//	@Column(name = "TRANSACTION_DATE")
//	private LocalDateTime transactionDate;
//
//	@Column(name = "END_DATE")
//	private LocalDateTime endDate;
	
	@OneToOne(mappedBy="transaction",cascade=CascadeType.ALL)
	private Emi emi;
	

	
	public Emi getEmi() {
		return emi;
	}

	public void setEmi(Emi emi) {
		this.emi = emi;
	}



	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getScheme() {
		return scheme;
	}

	public void setScheme(int scheme) {
		this.scheme = scheme;
	}

	



//	public LocalDateTime getTransactionDate() {
//		return transactionDate;
//	}
//
//	public void setTransactionDate(LocalDateTime transactionDate) {
//		this.transactionDate = transactionDate;
//	}
//
//	public LocalDateTime getEndDate() {
//		return endDate;
//	}
//
//	public void setEndDate(LocalDateTime endDate) {
//		this.endDate = endDate;
//	}

}
