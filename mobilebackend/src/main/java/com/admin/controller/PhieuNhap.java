package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/phieunhap/")
public class PhieuNhap {
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	  public String Index(ModelMap model) {

	    return "admin/kho/phieunhap/index";
	  }
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String Add(ModelMap model) {
		return "admin/kho/phieunhap/add";
	}
	
	
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String Edit(ModelMap model) {
		return "admin/kho/phieunhap/edit";
	}
}
