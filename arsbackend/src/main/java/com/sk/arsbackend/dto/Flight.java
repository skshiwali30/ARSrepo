package com.sk.arsbackend.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;
@Component
@Entity
public class Flight implements Serializable {

	private static final long serialVersionUID = 1L;
	
	// private fields
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotBlank(message = "Please enter the flight code!")
	private String code;
	
	@NotBlank(message = "Please enter the source name!")
	private String source;
	
	@NotBlank(message = "Please enter the destination!")
	private String destination;
	
	@NotBlank(message = "Please enter the departure time!")
	private String departureTime;
	
	@NotBlank(message = "Please enter the arrival time!")
	private String arrivalTime;
	
	@NotNull(message = "Please enter the no of seats!")
	@Column(name = "no_of_seats")
	private int noOfSeats;
	
	@Column(name = "is_active")	
	private boolean active;
	
	@NotNull(message = "Please enter fare!")
	private double fare;
	
	// default constructor
	public Flight() {
		//this.code = "PRD" + UUID.randomUUID().toString().substring(26).toUpperCase();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}

	public String getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public int getNoOfSeats() {
		return noOfSeats;
	}

	public void setNoOfSeats(int noOfSeats) {
		this.noOfSeats = noOfSeats;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public double getFare() {
		return fare;
	}

	public void setFare(double fare) {
		this.fare = fare;
	}

	@Override
	public String toString() {
		return "Flight [id=" + id + ", code=" + code + ", source=" + source + ", destination=" + destination
				+ ", departureTime=" + departureTime + ", arrivalTime=" + arrivalTime + ", noOfSeats=" + noOfSeats
				+ ", active=" + active + ", fare=" + fare + "]";
	}
	
}
