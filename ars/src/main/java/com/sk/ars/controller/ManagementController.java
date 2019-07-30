package com.sk.ars.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sk.ars.validator.ProductValidator;
import com.sk.arsbackend.dao.FlightDAO;
import com.sk.arsbackend.dto.Flight;

@Controller
@RequestMapping("/manage")
public class ManagementController {

	private static final Logger logger = LoggerFactory.getLogger(ManagementController.class);

	@Autowired
	private FlightDAO flightDAO;

	@RequestMapping("/flights")
	public ModelAndView manageProduct(@RequestParam(name="success",required=false)String success) {		
		
		ModelAndView mv = new ModelAndView("page");	  // this signify page.jsp
		mv.addObject("title","Flight Management");		// flag or attribute
		mv.addObject("userClickManageFlight",true);	// flag or attribute to identify that user click on ManageProduct button.
		
		Flight nFlight = new Flight();
		
		// Assuming that the user is ADMIN.
		// later he will enable or disable flight.
		nFlight.setActive(true);

		mv.addObject("flight", nFlight);
		return mv;
		
	}

	
	@RequestMapping("/{id}/flight")
	public ModelAndView manageProductEdit(@PathVariable int id) {		

		ModelAndView mv = new ModelAndView("page");	
		mv.addObject("title","Flight Management");		
		mv.addObject("userClickManageFlight",true);
		
		// Product nProduct = new Product();		
		mv.addObject("flight", flightDAO.get(id));

			
		return mv;
		
	}
	
	
	@RequestMapping(value = "/flight", method=RequestMethod.POST)
	public String managePostProduct(@Valid @ModelAttribute("flight") Flight mFlight, 
			BindingResult results, Model model, HttpServletRequest request) {
		
		//System.out.println("Hey"+mFlight);
		
		// mandatory file upload check
		if(mFlight.getId() == 0) {
			new ProductValidator().validate(mFlight, results);
		}
		else {
			// edit check only when the file has been selected
		}
		
		if(results.hasErrors()) {
			model.addAttribute("message", "Validation fails for adding the flight!");
			model.addAttribute("userClickManageFlight",true);
			return "page";
		}			

		if(mFlight.getId() == 0 ) {
			flightDAO.add(mFlight);
		}
		else {
			flightDAO.update(mFlight);
		}
	
		return "redirect:/manage/flights";
	}
	
	@RequestMapping(value = "/flight/{id}/activation", method=RequestMethod.GET)
	@ResponseBody
	public String managePostProductActivation(@PathVariable int id) {		
		Flight product = flightDAO.get(id);
		boolean isActive = product.isActive();
		product.setActive(!isActive);
		flightDAO.update(product);		
		return (isActive)? "Flight Disabled Successfully!": "Flight Enabled Successfully";
	}
			
}

	
