package com.onlinestorewepr.services;

import com.onlinestorewepr.daos.OrderDao;
import com.onlinestorewepr.models.Order;
import com.onlinestorewepr.utils.Validator;
import com.paypal.api.payments.Payment;

public class OrderService {
	private final OrderDao orderDao = new OrderDao();
    public void viewCheckout() {}
    public void forwardToCheckOut() {}
    public void forwardToCart() {}
    public void addOrder(Order order) {
    	order = new Order();
    	readData(order);
    	Boolean result = Validator.validateOrder(order);
    	if (result == true) {
    		if (order.getPayment()=="PayPal") {
	    		Payment payment = new Payment();
		    	PaymentService paymentService = new PaymentService();
		    	paymentService.authorizePayment(order);
		    	paymentService.executePayment(payment);
    		}
    		saveOrder(order);
    		orderDao.insert(order);
    	}
    }
    public void readData(Order order) {}
    public void saveOrder(Order order) {}
}