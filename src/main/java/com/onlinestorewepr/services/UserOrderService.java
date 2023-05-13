package com.onlinestorewepr.services;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinestorewepr.daos.CartItemDao;
import com.onlinestorewepr.models.Cart;
import com.onlinestorewepr.models.CartItem;
import com.onlinestorewepr.models.User;

public class UserOrderService {
	private final HttpServletRequest request ;
	private final HttpServletResponse response ;
	private User user = new User();
	private Cart cart = new Cart();
	private final CartItemDao cartItemDao = new CartItemDao();
    public UserOrderService(HttpServletRequest request, HttpServletResponse response) {
		super();
		this.request = request;
		this.response = response;
	}
	
	
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
}
