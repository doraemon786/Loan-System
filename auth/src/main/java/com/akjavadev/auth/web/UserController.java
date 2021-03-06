package com.akjavadev.auth.web;

import com.akjavadev.auth.model.Admin;
import com.akjavadev.auth.model.User;
import com.akjavadev.auth.service.SecurityService;
import com.akjavadev.auth.service.UserService;
import com.akjavadev.auth.validator.UserValidator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	@Autowired
	private UserValidator userValidator;



	static Logger logger = Logger.getLogger(UserController.class);

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Model model) {
		model.addAttribute("userForm", new User());

		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
		userValidator.validate(userForm, bindingResult);
		
		

		if (bindingResult.hasErrors()) {
			return "registration";
		}

		userService.save(userForm);
		
		User user = userService.findByUsername(userForm.getUsername());
		System.out.println("logging........./////////"+user.toString());
		

		securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/welcome";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password are invalid.");

		if (logout != null)
			model.addAttribute("message", "You have logged out successfully.");

		return "login";
	}

	@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
	public String welcome(Model model) {

		return "welcome";
	}
	
	@RequestMapping(value = "/adminlogindetail", method = RequestMethod.POST)
	public String adminlogin(Model model ,HttpServletRequest req) {
		
		
		
	     String username=req.getParameter("username");
		String password=req.getParameter("password");
		
		Admin admin=userService.adminAuth(username,password);
		
		if(admin!=null)
		{

      return "adminDash";
		
		}
		
		return "admin";
		
	
		
			
	 
	
	
}
	
	
	 
	   @RequestMapping(value = "/admin", method = RequestMethod.GET)
		public String showadminlogin(Model model) {
			model.addAttribute("adminForm", new Admin());

			return "admin";
		}
}
