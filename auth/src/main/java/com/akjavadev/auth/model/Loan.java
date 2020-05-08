package com.akjavadev.auth.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Loan {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int loanid;

	private String username;
	private String aadharNumber;
	private String loanAmt;
	private String loanPeriod;
	private String address;
	private String loanType;
	private String interestRate;
	private String status = "pending";

	public Loan() {

	}

	public int getLoanid() {
		return loanid;
	}

	public void setLoanid(int loanid) {
		this.loanid = loanid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public String getLoanAmt() {
		return loanAmt;
	}

	public void setLoanAmt(String loanAmt) {
		this.loanAmt = loanAmt;
	}

	public String getLoanPeriod() {
		return loanPeriod;
	}

	public void setLoanPeriod(String loanPeriod) {
		this.loanPeriod = loanPeriod;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLoanType() {
		return loanType;
	}

	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}

	public String getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(String interestRate) {
		this.interestRate = interestRate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Loan(int loanid, String username, String aadharNumber, String loanAmt, String loanPeriod, String address,
			String loanType, String interestRate, String status) {
		super();
		this.loanid = loanid;
		this.username = username;
		this.aadharNumber = aadharNumber;
		this.loanAmt = loanAmt;
		this.loanPeriod = loanPeriod;
		this.address = address;
		this.loanType = loanType;
		this.interestRate = interestRate;
		this.status = status;
	}

}
