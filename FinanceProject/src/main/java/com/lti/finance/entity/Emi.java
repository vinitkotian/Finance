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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="EMI")
public class Emi {
	
	@Id
	@Column(name="EMI_NO")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="s3")
	@SequenceGenerator(name="s3",sequenceName="emi_seq",allocationSize=1)
	private int emiNo;
	
	@Column(name="INSTALLMENT_AMOUNT ")
	private double installmentAmount;
	
	@Column(name="START_DATE")
	private LocalDateTime  startDate;
	
	@Column(name="END_DATE")
	private LocalDateTime endDate;
	
	@OneToOne
	@JoinColumn(name="TRANSACTION_ID")
	private Transaction transaction;
	
	@OneToMany(mappedBy="emi",cascade=CascadeType.ALL)//new
	private Set<Installment> installment;//new

	@Column(name="STATUS")
	private  String status ;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}


	public Set<Installment> getInstallment() {
		return installment;
	}

	public void setInstallment(Set<Installment> installment) {
		this.installment = installment;
	}


	public double getInstallmentAmount() {
		return installmentAmount;
	}

	public void setInstallmentAmount(double installmentAmount) {
		this.installmentAmount = installmentAmount;
	}

	public int getEmiNo() {
		return emiNo;
	}

	public void setEmiNo(int emiNo) {
		this.emiNo = emiNo;
	}

	public double getInstallment_amount() {
		return installmentAmount;
	}

	public void setInstallment_amount(double installment_amount) {
		this.installmentAmount = installment_amount;
	}

	public LocalDateTime getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDateTime startDate) {
		this.startDate = startDate;
	}

	public LocalDateTime getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDateTime endDate) {
		this.endDate = endDate;
	}

	
	public Transaction getTransaction() {
		return transaction;
	}

	public void setTransaction(Transaction transaction) {
		this.transaction = transaction;
	}


	
	
	
}
