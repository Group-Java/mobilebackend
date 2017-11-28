package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/ketnoi/")
public class KetNoi {
	@RequestMapping(value = "index", method = RequestMethod.GET)
	  public String Index(ModelMap model) {

	    return "admin/sanpham/ketnoi/index";
	  }
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String Add(ModelMap model) {
		return "admin/sanpham/ketnoi/add";
	}
	
	
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String Edit(ModelMap model) {
		return "admin/sanpham/ketnoi/edit";
	}
}
