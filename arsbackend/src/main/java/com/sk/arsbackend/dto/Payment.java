package com.sk.arsbackend.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Payment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotBlank(message = "Please enter the Credit Card Number!")
	private String creditCardNumber;
	
	@NotNull(message = "Please enter expiryDate MM!")
	private int expiryDateMM;
	
	@NotNull(message = "Please enter expiryDate YY!")
	private int expiryDateYY;
	
	@NotNull(message = "Please enter cv code!")
	private int cvCode;
	
	@NotNull(message = "Final Payment should not be null!")
	private double finalPayment;
	
	private int flightId;

	public String getCreditCardNumber() {
		return creditCardNumber;
	}

	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}

	public int getExpiryDateMM() {
		return expiryDateMM;
	}

	public void setExpiryDateMM(int expiryDateMM) {
		this.expiryDateMM = expiryDateMM;
	}

	public int getExpiryDateYY() {
		return expiryDateYY;
	}

	public void setExpiryDateYY(int expiryDateYY) {
		this.expiryDateYY = expiryDateYY;
	}

	public int getCvCode() {
		return cvCode;
	}

	public void setCvCode(int cvCode) {
		this.cvCode = cvCode;
	}

	public double getFinalPayment() {
		return finalPayment;
	}

	public void setFinalPayment(double finalPayment) {
		this.finalPayment = finalPayment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getFlightId() {
		return flightId;
	}

	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	@Override
	public String toString() {
		return "Payment [id=" + id + ", creditCardNumber=" + creditCardNumber + ", expiryDateMM=" + expiryDateMM
				+ ", expiryDateYY=" + expiryDateYY + ", cvCode=" + cvCode + ", finalPayment=" + finalPayment
				+ ", flightId=" + flightId + "]";
	}
	
}
