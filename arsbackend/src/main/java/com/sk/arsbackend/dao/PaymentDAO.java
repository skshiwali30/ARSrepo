package com.sk.arsbackend.dao;

import com.sk.arsbackend.dto.Payment;

public interface PaymentDAO {

	Payment get(String id);
	boolean add(Payment paymentBean);
	boolean update(Payment paymentBean);
}
