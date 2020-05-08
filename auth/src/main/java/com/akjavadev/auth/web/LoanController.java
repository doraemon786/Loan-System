
package com.akjavadev.auth.web;

import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.el.stream.Stream;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.akjavadev.auth.model.Admin;
import com.akjavadev.auth.model.Loan;
import com.akjavadev.auth.model.User;
import com.akjavadev.auth.repository.UserRepository;
import com.akjavadev.auth.service.LoanService;
import com.akjavadev.auth.service.LoanServiceImpl;

@Controller
public class LoanController {

	@Autowired
	LoanServiceImpl loanServiceImpl;

	@Autowired
	UserRepository usereRepository;
	
	

	private final static Logger LOGGER = Logger.getLogger(LoanController.class);

	@RequestMapping(value = "/applyLoan", method = RequestMethod.GET)
	public String showLoanform(Model m) {
		m.addAttribute("loandetails", new Loan());
		return "loanForm";
	}

	@RequestMapping(value = "/loandetailsubmit", method = RequestMethod.POST)
	public String registration(@ModelAttribute("loandetails") Loan loandetails, BindingResult bindingResult,
			Model model,HttpServletRequest request) {
		
		String name = request.getUserPrincipal().getName();
		System.out.println("...........+++logger++++++++++"+name);


		if (bindingResult.hasErrors()) {
			return "loanForm";
		}
		
	
		loandetails.setUsername(name);
	
		loanServiceImpl.saveLoan(loandetails);

		return "redirect:/welcome";
	}

	
	
	@RequestMapping(value = "/fetch", method = RequestMethod.GET)
	public String fetchStatus(HttpServletRequest request,Model m) {
		String name = request.getUserPrincipal().getName();
		List<Loan> Loanlist=loanServiceImpl.fetchLoandetails(name);
		/*
		 * System.out.println("loan list fro datanase.........."+Loanlist.get(0));
		 * m.addAttribute("list", Loanlist);
		 */
		
		
		ServletContext servletContext=request.getServletContext();

		servletContext.setAttribute("Loanlist", Loanlist);
		
		
		return "fetcheddetails";
	}
	
	
	
	   @RequestMapping(value="/editemp/{id}")    
	    public String edit(@PathVariable int id, Model m){    
		   Loan loandetail=loanServiceImpl.fetchLoandetailsbyId(id);
		   m.addAttribute("loandetails", new Loan());
	        m.addAttribute("loandetail",loandetail);  
	        return "loanFormUpdate";    
	    } 
	   
	   
	   
	   @RequestMapping(value = "/loandetailupdate", method = RequestMethod.POST)
		public String updateLoanDetails(@ModelAttribute("loandetails") Loan loandetails, BindingResult bindingResult,
				Model model,HttpServletRequest request) {
			
			String name = request.getUserPrincipal().getName();
			System.out.println("...........+++logger++++++++++"+name);


			if (bindingResult.hasErrors()) {
				return "loanForm";
			}
			
		
		
			loanServiceImpl.updateLoanDetail(loandetails);

			return "redirect:/welcome";
		}
	   
	  
	   
}
