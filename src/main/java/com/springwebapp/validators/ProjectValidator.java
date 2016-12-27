package com.springwebapp.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.springwebapp.models.Project;

public class ProjectValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Project.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		Project project = (Project) obj;
		
		if(project.getName().length() < 5) {
			errors.rejectValue("name", "project.name", "The name is too short");
		}

	}

}
