package com.mysite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class TestMysite {
	
	@RequestMapping(value= "hi", method = RequestMethod.GET)
	public String test_Mysite(ModelMap model) {
		model.addAttribute("test","Dinhtruong");
		return "mysite/index";
	}
}
