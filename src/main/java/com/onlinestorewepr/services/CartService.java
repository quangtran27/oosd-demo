package com.onlinestorewepr.services;

import com.onlinestorewepr.daos.CartDAO;
import com.onlinestorewepr.models.Cart;

public class CartService {
	private final CartDAO cartDao = new CartDAO();
	private Cart cart = new Cart();
	private int cartId = 1;
    public void viewCart() {
    	cart = cartDao.get(cartId);
    	forwardToCart();
    }
    
    public void forwardToCart() {}
    public void addProductToCart() {}
}
