package com.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mobilebackend.model.SanPhamModel;


@Controller
@RequestMapping("/admin/sanpham/")
public class SanPham {
	
	
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	  public String Index(ModelMap model) {
	      

		//model.addAttribute("ten", sanphamservice.GetInfo());
		
	    return "admin/sanpham/sanpham/index";
	  }
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	  public String Add(ModelMap model) {
	      model.addAttribute("greeting", "dinhtruong");
		  model.addAttribute("content", "dashboard/index");
	    return "admin/sanpham/sanpham/add";
	  }
	
	
	@RequestMapping(value = "edit", method = RequestMethod.GET)
	  public String Edit(ModelMap model) {
	      model.addAttribute("greeting", "dinhtruong");
		  model.addAttribute("content", "dashboard/index");
	    return "admin/sanpham/sanpham/edit";
	  }

}
