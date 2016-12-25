package com.springwebapp.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springwebapp.models.Project;
import com.springwebapp.services.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@Autowired
	private ProjectService projectService;
	
	@RequestMapping(value="/{projectId}")
	public String findProject(Model model, @PathVariable("projectId") Long projectId) {
		model.addAttribute("project", this.projectService.find(projectId));
		return "project";
	}
	
	@RequestMapping(value="/find")
	public String find(Model model) {
		model.addAttribute("projects", this.projectService.findAll());
		return "projects";
	}
	
	@RequestMapping(value="/remove/{projectId}")
	public String remove(Model model, @PathVariable("projectId") Long projectId) {
		this.projectService.removeProject(projectId);
		model.addAttribute("project", this.projectService.findAll());
		return "projects";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addProject(Model model) {
		
		model.addAttribute("types", new ArrayList<String>() {{
			add("");
			add("Single Year");
			add("Multi Year");
		}});
		
		model.addAttribute("project", new Project());
		
		return "project_add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String saveProject(Model model, @ModelAttribute Project project) {
		this.projectService.addProject(project);
		System.out.println(project);
		model.addAttribute("projects", this.projectService.findAll());
		return "projects";
	}
	
}
