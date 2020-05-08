package com.akjavadev.auth.service;

import java.util.List;

import com.akjavadev.auth.model.Loan;

public interface LoanService {
	
	public Loan saveLoan(Loan loan);
	
	public List<Loan> fetchLoandetails(String name);
	
	public Loan fetchLoandetailsbyId(int loanid);
	
	public Loan updateLoanDetail(Loan loandetail);

}
