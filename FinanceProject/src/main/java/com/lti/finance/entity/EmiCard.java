package com.lti.finance.entity;

import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="EMICARD")
public class EmiCard {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator="s2")
	@SequenceGenerator(name="s2",sequenceName="emiCardNo__seq1",allocationSize=442316984)
	@Column(name="CARD_NO")
	private long cardNo;
	
	@Column(name="CARD_TYPE")
	private String cardType;
	
	@Column(name="CARD_LIMIT")
	private double cardLimit;
	
	@Column(name="ACTIVATION_DATE")
	private LocalDate activationDate;
	
	@Column(name="EXPIRY_DATE")
	private LocalDate expiryDate;
	
	@Column(name="CREDIT_USED")
	private double creditUsed;
	
	@Column(name="CARD_STATUS")
	private String cardstatus;
	
	@OneToOne
	@JoinColumn(name="User_Id")
	private User user;
	
	public long getCardNo() {
		return cardNo;
	}

	public void setCardNo(long cardNo) {
		this.cardNo = cardNo;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public double getCardLimit() {
		return cardLimit;
	}

	public void setCardLimit(double cardLimit) {
		this.cardLimit = cardLimit;
	}

	public LocalDate getActivationDate() {
		return activationDate;
	}

	public void setActivationDate(LocalDate activationDate) {
		this.activationDate = activationDate;
	}

	public LocalDate getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(LocalDate expiryDate) {
		this.expiryDate = expiryDate;
	}

	public double getCreditUsed() {
		return creditUsed;
	}

	public void setCreditUsed(double creditUsed) {
		this.creditUsed = creditUsed;
	}

	

	public String getCardstatus() {
		return cardstatus;
	}

	public void setCardstatus(String cardstatus) {
		this.cardstatus = cardstatus;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
