package com.akjavadev.auth.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.akjavadev.auth.model.Loan;

public interface LoanRepository extends JpaRepository<Loan, Integer>{
	
	   @Query("FROM Loan WHERE username = ?1")
	    List<Loan> fetchLoan(String username);
	   
	   @Query("UPDATE Loan c SET c.interestRate =?1 WHERE c.loanid =?2")
	     Loan updateLoan(String intrate,int loanid);
	
}