package com.rakeshkp.spring;

import java.text.DateFormat;
import java.sql.*; 

import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	Database d=new Database();
	
	
	
	
	
	
	/**
	 * Simply selects the home view to render by returning its home page.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
		
		return "index";
	}
	
	
	
	/**
	 *  Simply selects the home view to render by returning its home page.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String firstpage(Locale locale, Model model) {
		
		
		return "index";
	}
	
	
	/**
	 *  selects the dashboard 
	 */
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard(Locale locale, Model model) {
		
		
		return "dashboard";
	}
	

	/**
	 * selects the register page 
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Locale locale, Model model) {
		
		
		return "register";
	}
	
	
	/**
	 * register validation.
	 */
	@RequestMapping(value = "/register_validate", method = RequestMethod.GET)
	public String register_val(Locale locale, Model model,@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("pass") String pass,@RequestParam("mob") String mob,@RequestParam("add") String add,@RequestParam("gender") String gender,@RequestParam("dob") String dob) {
		
		long mobile_number=Long.parseLong(mob);
		int n1=d.user_existing(email);
		
		if(n1!=0) {
		    
			
			model.addAttribute("reg_stats","Email Already Registered");
			return "register";
			
			
		}
		else {
			
			d.insert(name, pass, mobile_number, email, add, gender, dob, "undef", "undef");
			model.addAttribute("reg_stats"," Sign up Succesful");
			return "register";
			
		}
	
	
	}
	
	
	/**
	 * testing
	 */
	@RequestMapping(value = "/testdb", method = RequestMethod.GET)
	public String testDB(Locale locale,@RequestParam("email") String siteName, @RequestParam("pass") String passowrd,
            Model model) {
		
		
		
		model.addAttribute("name", siteName);
		return "index";
	}
	



	/**
	 * editing the profile
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String update(Locale locale,
            Model model) {
		
		
		
		return "update";
	}
	
	
	
	
	
	/**
	 * login validation 
	 */
	@RequestMapping(value = "/login_validate", method = RequestMethod.GET)
	public String login(Locale locale,@RequestParam("email") String email, @RequestParam("pass") String passowrd,
            Model model) {
		
		
		d.connectdb();
		int n1=d.login_val(email, passowrd);
		model.addAttribute("n1", n1);
		
		if(n1!=0) {
		    
			model.addAttribute("login_stats", "Login Successful");
			model.addAttribute("userid",n1);
			return "dashboard";
			
			
		}
		model.addAttribute("login_stats", "fail");
	
		
		return "index";
	}
	
	
}
