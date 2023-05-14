package com.onlinestorewepr.services;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinestorewepr.daos.CartItemDAO;
import com.onlinestorewepr.daos.OrderDAO;
import com.onlinestorewepr.models.Cart;
import com.onlinestorewepr.models.CartItem;
import com.onlinestorewepr.models.Order;
import com.onlinestorewepr.models.User;
import com.onlinestorewepr.utils.Validator;
import com.paypal.api.payments.Payment;

public class OrderService {
	private final HttpServletRequest request ;
	private final HttpServletResponse response ;
	private User user = new User();
	private Cart cart = new Cart();
	private final CartItemDAO cartItemDao = new CartItemDAO();
    public OrderService(HttpServletRequest request, HttpServletResponse response) {
		super();
		this.request = request;
		this.response = response;
	}
	private final OrderDAO orderDao = new OrderDAO();
    public void viewCheckout() {
    	cart = user.getCart(); 
    	String[] selectedCartItemIds = request.getParameter("cart_items").split(",");
    	 List<CartItem> cartItems = new ArrayList<>();
    	for (String item: selectedCartItemIds) {
    		int cartItemId = Integer.parseInt(item);
    		cartItems.add(cartItemDao.get(cartItemId));
    	}
    	if (cartItems == null) 
    		forwardToCart();
    	else 
    		forwardToCheckOut();
    }
    public void forwardToCheckOut() {}
    public void forwardToCart() {}
    public void addOrder() {
    	Order order = new Order();
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