package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/tuychon/")
public class TuyChon {
	@RequestMapping(value = "index", method = RequestMethod.GET)
	  public String Index(ModelMap model) {
	      model.addAttribute("greeting", "dinhtruong");
		  model.addAttribute("content", "dashboard/index");
	    return "admin/sanpham/tuychon/index";
	  }
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	  public String Add(ModelMap model) {
	      model.addAttribute("greeting", "dinhtruong");
		  model.addAttribute("content", "dashboard/index");
	    return "admin/sanpham/tuychon/add";
	  }
	
	
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	  public String Edit(ModelMap model) {
	      model.addAttribute("greeting", "dinhtruong");
		  model.addAttribute("content", "dashboard/index");
	    return "admin/sanpham/tuychon/edit";
	  }
	
	
}
