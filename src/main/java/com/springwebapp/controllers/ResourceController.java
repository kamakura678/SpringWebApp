package com.springwebapp.controllers;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.springwebapp.models.Resource;

@Controller
@RequestMapping("/resource")
@SessionAttributes("resource")
public class ResourceController {
	
	@RequestMapping("/add")
	public String add(Model model) {
		
//		List<String> options = new LinkedList<>(Arrays.asList(new String[] {
//				"Material", "Other", "Staff", "Technical Equipment"}));
		
//		List<String> radios = new LinkedList<>(Arrays.asList(new String[] {
//				"Hours", "Piece", "Tons"}));
		
//		List<String> checks = new LinkedList<>(Arrays.asList(new String[] {
//				"Lead Time", "Special Rate", "Requires Approval"}));
		
//		model.addAttribute("typeOptions", options);
//		model.addAttribute("radioOptions", radios);
//		model.addAttribute("checkOptions", checks);
//		model.addAttribute("resource", new Resource());
		
		if(1 == 1) {
			throw new RuntimeException("There was an error.");
		}
		
		return "resource_add";
	}
	
	@ModelAttribute("resource")
	public Resource getResource() {
		return new Resource();
	}
	
	@ModelAttribute("typeOptions")
	public List<String> getTypes() {
		return new LinkedList<>(Arrays.asList(new String[] {
				"Material", "Other", "Staff", "Technical Equipment"}));
	}
	
	@ModelAttribute("radioOptions")
	public List<String> getRadios() {
		return new LinkedList<>(Arrays.asList(new String[] {
				"Hours", "Piece", "Tons"}));
	}
	
	@ModelAttribute("checkOptions")
	public List<String> getChecks() {
		return new LinkedList<>(Arrays.asList(new String[] {
				"Lead Time", "Special Rate", "Requires Approval"}));
	}
	
	@RequestMapping("/save")
	public String save(@ModelAttribute Resource resource, SessionStatus status) {
		status.setComplete();
		return "redirect:/resource/add";
	}
	
	@RequestMapping("/review")
	public String review(@ModelAttribute Resource resource) {
		return "resource_review";
	}
	
	@RequestMapping("/request")
	@ResponseBody
	public String request(@ModelAttribute("resource") Resource resource) {
		//Send out an email for request
		return "The request has been sent for approval";
	}
	
	@ExceptionHandler(NullPointerException.class)
	public String handleError(HttpServletRequest request) {
		return "controller_error";
	}
	
}
