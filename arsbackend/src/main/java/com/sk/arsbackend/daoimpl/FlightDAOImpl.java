package com.sk.arsbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sk.arsbackend.dao.FlightDAO;
import com.sk.arsbackend.dto.Flight;


@Repository("flightDAO")
@Transactional
public class FlightDAOImpl implements FlightDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	/*
	 * SINGLE
	 * */
	
	@Override
	public Flight get(int id) {
		try {			
			return sessionFactory
					.getCurrentSession()
						.get(Flight.class,Integer.valueOf(id));			
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}
		return null;
	}

	/*
	 * LIST
	 * */
	
	@Override
	public List<Flight> list() {
		return sessionFactory
				.getCurrentSession()
					.createQuery("FROM Flight" , Flight.class)
						.getResultList();
	}

	/*
	 * INSERT
	 * */
	@Override
	public boolean add(Flight flight) {
		try {			
			sessionFactory
					.getCurrentSession()
						.persist(flight);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;
	}

	/*
	 * UPDATE
	 * */
	@Override
	public boolean update(Flight flight) {
		try {			
			sessionFactory
					.getCurrentSession()
						.update(flight);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;		
	}

	
	/*
	 * DELETE
	 * */
	@Override
	public boolean delete(Flight flight) {
		try {
			
			flight.setActive(false);
			// call the update method
			return this.update(flight);
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;			
	}

	@Override
	public List<Flight> listActiveFlights() {
		String selectActiveFlights = "FROM Flight WHERE active = :active";
		return sessionFactory
				.getCurrentSession()
					.createQuery(selectActiveFlights, Flight.class)
						.setParameter("active", true)
							.getResultList();
	}
}
