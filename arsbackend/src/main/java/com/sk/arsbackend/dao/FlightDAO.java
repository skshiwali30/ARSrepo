package com.sk.arsbackend.dao;

import java.util.List;

import com.sk.arsbackend.dto.Flight;

public interface FlightDAO {

	// single flight by id.
	Flight get(int id);
	
	// List of flight.
	List<Flight> list();
	
	boolean add(Flight product);
	boolean update(Flight product);
	boolean delete(Flight product);
	
	// business methods
	List<Flight> listActiveFlights();
	
}
