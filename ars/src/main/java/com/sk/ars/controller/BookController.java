package com.sk.ars.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sk.ars.service.BookingService;
import com.sk.arsbackend.dao.PaymentDAO;
import com.sk.arsbackend.dto.Flight;
import com.sk.arsbackend.dto.Payment;

@Controller
@RequestMapping("/booking")
public class BookController {
	
	@Autowired
	private BookingService bookingService;
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	@RequestMapping("/{id}/flight")
	public ModelAndView showBooking(@PathVariable int id) {
		Flight flight = bookingService.getAvailableFlight(id);
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Ticket Booking");
		mv.addObject("userClickBooking", true);
		
		mv.addObject("flight", flight);
		
		return mv;
	}
	
	@RequestMapping("/{id}/pay")
	public ModelAndView showPayment(@PathVariable int id) {
		Flight flight = bookingService.getAvailableFlight(id);
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Payment");
		mv.addObject("userClickPayment", true);
		mv.addObject("payment", new Payment());
		
		mv.addObject("flight", flight);
		
		return mv;
	}
	
	@RequestMapping(value = "/payment", method=RequestMethod.POST)
	public ModelAndView managePostProduct(@Valid @ModelAttribute("payment") Payment payment, 
			BindingResult results, Model model, HttpServletRequest request) {
		
		Flight flight = bookingService.getAvailableFlight(payment.getFlightId());
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Payment");
		mv.addObject("userBookingSuccess", true);
		mv.addObject("payment", payment);
		mv.addObject("flight", flight);
		
		if(payment.getId() == 0) {
			paymentDAO.add(payment);
		}
		
		return mv;
	}
}
