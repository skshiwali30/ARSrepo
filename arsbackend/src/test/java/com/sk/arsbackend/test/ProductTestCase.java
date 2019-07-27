package com.sk.arsbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sk.arsbackend.dao.FlightDAO;
import com.sk.arsbackend.dto.Flight;

public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static FlightDAO flightDAO;
	
	private Flight product;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.sk.arsbackend");
		context.refresh();
		flightDAO = (FlightDAO)context.getBean("flightDAO");
	}
	
/*	@Test
	public void testCRUDProduct() {
		
		// create operation
		product = new Product();
				
		product.setName("Oppo Selfie S53");
		product.setBrand("Oppo");
		product.setDescription("This is some description for oppo mobile phones!");
		product.setUnitPrice(25000);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		assertEquals("Something went wrong while inserting a new product!",
				true,flightDAO.add(product));		
		
		
		// reading and updating the category
		product = flightDAO.get(2);
		product.setName("Samsung Galaxy S7");
		assertEquals("Something went wrong while updating the existing record!",
				true,flightDAO.update(product));		
				
		assertEquals("Something went wrong while deleting the existing record!",
				true,flightDAO.delete(product));		
		
		// list
		assertEquals("Something went wrong while fetching the list of products!",
				6,flightDAO.list().size());		
				
	}
		*/	
	
	@Test
	public void testListActiveProducts() {
		assertEquals("Something went wrong while fetching the list of products!",
				5,flightDAO.listActiveFlights().size());				
	} 
		
}
