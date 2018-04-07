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
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/time", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome Rakesh! The client locale is {}.", locale);
		
		Date date = new Date();
String s1 = "this is rakesh";
		
		
		
		model.addAttribute("serverTime", s1 );
		
		return "home";
	}
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
		
		return "index";
	}
	

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Locale locale, Model model) {
		
		
		return "register";
	}
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/register_validate", method = RequestMethod.GET)
	public String register_val(Locale locale, Model model,@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("pass") String pass,@RequestParam("mob") String mob,@RequestParam("add") String add,@RequestParam("gender") String gender) {
		
		d.connectdb();
		d.insert(name, pass, 1235, email, add, gender, "def", "def", "def");
		
		return "register";
	}
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/testdb", method = RequestMethod.GET)
	public String testDB(Locale locale,@RequestParam("email") String siteName, @RequestParam("pass") String passowrd,
            Model model) {
		
		
		
		model.addAttribute("name", siteName);
		return "index";
	}
	



	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String update(Locale locale,
            Model model) {
		
		
		
		return "update";
	}
	
	
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login_validate", method = RequestMethod.GET)
	public String login(Locale locale,@RequestParam("email") String email, @RequestParam("pass") String passowrd,
            Model model) {
		
		
		d.connectdb();
		int n1=d.login_val(email, passowrd);
		model.addAttribute("n1", n1);
		
		if(n1!=0) {
		    
			model.addAttribute("login_stats", "login successful");
			model.addAttribute("userid",n1);
			return "dashboard";
			
			
		}
		model.addAttribute("login_stats", "login unsuccessful");
		
		return "index";
	}
	
	
}
