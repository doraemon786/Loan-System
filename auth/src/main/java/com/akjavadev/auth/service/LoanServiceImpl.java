package com.akjavadev.auth.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.akjavadev.auth.model.Loan;
import com.akjavadev.auth.repository.LoanRepository;
@Service
public class LoanServiceImpl implements LoanService{
	
	@Autowired
	LoanRepository loanRepository;
	
	
	 

	@Override
	public Loan saveLoan(Loan loan) {

		return loanRepository.save(loan);
	}
	
	@Override
	public List<Loan> fetchLoandetails(String name) {
		return loanRepository.fetchLoan(name);
		
		
	}

	@Override
	public Loan fetchLoandetailsbyId(int loanid) {
		
		return loanRepository.findOne(loanid);
	}

	@Override
	public Loan updateLoanDetail(Loan loandetail) {
		int loanid=loandetail.getLoanid();
		System.out.println("heloooooooooooo"+loanid);
		return loanRepository.updateLoan(loandetail.getInterestRate(),1);
	}

}
