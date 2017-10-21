package com.mobilebackend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/hello/")
public class HelloWorldController {

	// http://:8080/Spring4MVCHelloWorldNoXMLDemo/hello/hi
	/*
	 * POST GET PUT DELETE CRUD: CREATE, READ, UPDATE, DELETE MVC
	 */
	@RequestMapping(value = "hi", method = RequestMethod.GET)
	public String sayHello(ModelMap model) {
		// String greeting = Hello World from Spring 4 MVC;
		model.addAttribute("greeting", "Hello World from Spring 4 MVC");
		return "welcome";
	}

	@RequestMapping(value = "hello-again", method = RequestMethod.GET)
	public String sayHelloAgain(ModelMap model) {
		model.addAttribute("greeting", "Hello World Again, from Spring 4 MVC");
		return "welcome";
	}

	@RequestMapping("user")
	public String userInfo(Model model, @RequestParam(value = "name", defaultValue = "Guest") String name) {

		model.addAttribute("name", name);

		if ("admin".equals(name)) {
			model.addAttribute("email", "admin@example.com");
		} else {
			model.addAttribute("email", "Not set");
		}
		return "userInfo";
	}

	@RequestMapping("/web/fe/{sitePrefix}/{language}/document/{id}/{naturalText}")
	public String documentView(Model model, @PathVariable(value = "sitePrefix") String sitePrefix,
			@PathVariable(value = "language") String language, @PathVariable(value = "id") Long id,
			@PathVariable(value = "naturalText") String naturalText) {

		model.addAttribute("sitePrefix", sitePrefix);
		model.addAttribute("language", language);
		model.addAttribute("id", id);
		model.addAttribute("naturalText", naturalText);

		String documentName = "Java tutorial for Beginners";
		if (id == 1111) {
			documentName = "Spring MVC for Beginners";
		}

		model.addAttribute("documentName", documentName);

		return "documentView";
	}
}