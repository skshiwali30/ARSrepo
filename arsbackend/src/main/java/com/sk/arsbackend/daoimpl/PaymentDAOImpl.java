package com.sk.arsbackend.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sk.arsbackend.dao.PaymentDAO;
import com.sk.arsbackend.dto.Payment;

@Repository("paymentDAO")
@Transactional
public class PaymentDAOImpl implements PaymentDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Payment get(String id) {
		try {
			return sessionFactory
					.getCurrentSession()
					.get(Payment.class, Integer.valueOf(id));
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean add(Payment paymentBean) {
		try {			
			sessionFactory
					.getCurrentSession()
						.persist(paymentBean);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;
	}

	@Override
	public boolean update(Payment paymentBean) {
		try {			
			sessionFactory
					.getCurrentSession()
						.update(paymentBean);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;	
	}

}
