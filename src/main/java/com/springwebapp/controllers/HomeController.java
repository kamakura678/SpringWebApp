package com.springwebapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springwebapp.models.Project;
import com.springwebapp.models.Sponsor;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String goHome(Model model) {
		Project project = new Project();
		project.setName("First Project");
		project.setSponsor(new Sponsor("NASA", "123456", "nasa@nasa.com"));
		project.setDescription("This is a simple project sponsored by NASA");
		
		model.addAttribute("currentProject", project);
		
		return "welcome";
	}

}
