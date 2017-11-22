package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/account/")
public class Account {

	@RequestMapping(value = "index", method = RequestMethod.GET) 
	public String index (ModelMap model) {
		
	}
}
