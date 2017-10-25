package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/")
public class Test {

	@RequestMapping(value = "abc", method = RequestMethod.GET)
	public String test(ModelMap model) {
		model.addAttribute("greeting", "dinhtruong");
		return "admin/welcome";
	}
}
