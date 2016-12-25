package com.springwebapp.services;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import com.springwebapp.models.Project;

public class ProjectService {
	private List<Project> projects = new LinkedList<Project>();
	
	public ProjectService() {
		Project javaProject = this.createProject("Java Project", "This is a Java Project", 1L);
		Project javascriptProject = this.createProject("Javascript Project", "This is a Javascript Project", 2L);
		Project htmlProject = this.createProject("HTML Project", "This is a HTML Project", 3L);
		
		this.projects.addAll(Arrays.asList(new Project[]{javaProject, javascriptProject, htmlProject}));
	}
	
	public List<Project> findAll() {
		return this.projects;
	}
	
	public Project find(Long projectId) {
		return this.projects.stream().filter(p -> {
			return p.getProjectId().equals(projectId);
		}).collect(Collectors.toList()).get(0);
	}
	
	private Project createProject(String title, String description, Long projectId) {
		Project project = new Project();
		project.setName(title);
		project.setDescription(description);
		project.setAuthorizedFunds(new BigDecimal("100000"));
		project.setAuthorizedHours(new BigDecimal("1000"));
		project.setProjectId(projectId);
		project.setSpecial(false);
		project.setType("multi");
		project.setYear("2015");
		
		return project;
	}
	
	public void addProject(Project project) {
		project.setProjectId(generateProjectId());
		this.projects.add(project);
	}
	
	public void removeProject(Long projectId) {
		if(!this.projects.isEmpty()) {
			for(int i = 0; i < this.projects.size(); i++) {
				if(this.projects.get(i).getProjectId() == projectId) {
					this.projects.remove(i);
					break;
				}
			}
		}
	}
	
	private Long generateProjectId() {
		Long projectId = 1L;
		
		if(!this.projects.isEmpty()) {
			int size = this.projects.size();
			projectId = this.projects.get(size - 1).getProjectId() + 1L;
		}
		
		return projectId;
	}
	
}
