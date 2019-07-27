package com.sk.ars.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.sk.arsbackend.dto.Flight;

public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Flight.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		/*
		Flight product = (Flight) target;
		if(product.getFile() == null || product.getFile().getOriginalFilename().equals("")) {
			errors.rejectValue("file", null, "Please select a file to upload!");
			return;
		}
		if(! (product.getFile().getContentType().equals("image/jpeg") || 
				product.getFile().getContentType().equals("image/png")) ||
				product.getFile().getContentType().equals("image/gif")
			 )
			{
				errors.rejectValue("file", null, "Please select an image file to upload!");
				return;	
			}
		 */
		
	}
}
