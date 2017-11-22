package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/dashboard/")
public class Dashboard {

	@RequestMapping(value = "index", method = RequestMethod.GET)
	  public String test(ModelMap model) {
	      model.addAttribute("greeting", "dinhtruong");
		  model.addAttribute("content", "dashboard/index");
	    return "admin/dashboard/index";
	  }
}
