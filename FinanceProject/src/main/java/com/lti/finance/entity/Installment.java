package com.lti.finance.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="INSTALLMENT")
public class Installment {

	@Id
	@GeneratedValue
	@Column(name="INSTALLMENT_NO")
	private int installmentNo;
	
	@Column(name="DATE_PAID")
	private LocalDateTime datePaid;
	
	@Column(name="DUE_DATE")
	private LocalDateTime dueDate;
	
	@ManyToOne
	@JoinColumn(name="EMI_NO")
	private Emi emi;
	
	public int getInstallmentNo() {
		return installmentNo;
	}

	public void setInstallmentNo(int installmentNo) {
		this.installmentNo = installmentNo;
	}

	public LocalDateTime getDatePaid() {
		return datePaid;
	}

	public void setDatePaid(LocalDateTime datePaid) {
		this.datePaid = datePaid;
	}

	public LocalDateTime getDueDate() {
		return dueDate;
	}

	public void setDueDate(LocalDateTime dueDate) {
		this.dueDate = dueDate;
	}

	public Emi getEmi() {
		return emi;
	}

	public void setEmi(Emi emi) {
		this.emi = emi;
	}

}
