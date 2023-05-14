package com.oosd.services;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oosd.daos.CartItemDAO;
import com.oosd.daos.OrderDAO;
import com.oosd.models.Cart;
import com.oosd.models.CartItem;
import com.oosd.models.Order;
import com.oosd.models.User;
import com.oosd.utils.Validators;
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
    	boolean result = Validators.validateOrder(order);
    	if (result == true) {
    		if (order.getPayment() == "PayPal") {
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