package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/thongsocamera/")
public class ThongSoCamera {

	@RequestMapping(value ="index", method = RequestMethod.GET)
	public String Index(ModelMap model) {
		return "admin/sanpham/thongsocamera/index";
	}
	
	
	@RequestMapping(value ="add", method = RequestMethod.GET)
	public String Add(ModelMap model) {
		return "admin/sanpham/thongsocamera/add";
	}
	
	@RequestMapping(value ="addketnoi", method = RequestMethod.POST)
	public String AddKetNoi(ModelMap model) {
		
		return "admin/sanpham/thongsocamera/index";
	}
	
	@RequestMapping(value ="edit", method = RequestMethod.GET)
	public String Edit(ModelMap model) {
		return "admin/sanpham/thongsocamera/edit";
	}
}
