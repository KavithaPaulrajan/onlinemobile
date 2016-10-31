package com.emobile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.emobile.service.ProductServiceImpl;


@Controller
public class HomeController {
	
	@Autowired 
	ProductServiceImpl  productService; 
    
    
    @Autowired
    public void setProductService(ProductServiceImpl productService){
    	this.productService = productService;
    }
    
   @RequestMapping(value="/")
    public String welcome(){
    	return "welcome";
    }
    @RequestMapping(value="/home")
	public String home(){
		return "home";
	}
	
	@RequestMapping("/about")
	public String about(){
		return "about";
	}
	
    @RequestMapping("/login")
    public String login(@RequestParam(value="error",required=false) String error,
    		@RequestParam(value="logout",required=false) String logout, Model model){
    		if(error!=null)
    	model.addAttribute("error","Invalid username and password");
    	
    	if(logout!=null)
    		model.addAttribute("logout","You have logged out successfully");
    	return "login";
    }

   
		
}
