package com.qBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		return "index";
	}
	
	
	@GetMapping("login")
	public void login() {
		
	}
	
	
	@GetMapping("profile")
	public void profile() {
		
	}
	
	@GetMapping("register")
	public void register() {
		
	}
}
