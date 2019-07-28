package com.sk.ars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sk.arsbackend.dao.FlightDAO;
import com.sk.arsbackend.dto.Flight;

@Controller
@RequestMapping("/json/data")
public class JsonDataController {

	@Autowired
	private FlightDAO flightDAO;
	
	@RequestMapping("/admin/all/flights")
	@ResponseBody
	public List<Flight> getAllProductsList() {		
		return flightDAO.list();
	}	
	
	@RequestMapping("/all/flights")
	@ResponseBody
	public List<Flight> getAllProducts() {
		return flightDAO.listActiveFlights();
	}
}
