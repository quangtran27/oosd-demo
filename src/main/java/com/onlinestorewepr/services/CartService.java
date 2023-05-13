package com.onlinestorewepr.services;

import com.onlinestorewepr.daos.CartDao;
import com.onlinestorewepr.models.Cart;

public class CartService {
	private final CartDao cartDao = new CartDao();
	private Cart cart = new Cart();
	private int cartId = 1;
    public void viewCart() {
    	cart = cartDao.get(cartId);
    	forwardToCart();
    }
    
    public void forwardToCart() {}
    public void addProductToCart() {}
}
