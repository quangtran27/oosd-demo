package com.onlinestorewepr.services;

import com.onlinestorewepr.daos.CartDao;
import com.onlinestorewepr.models.Cart;

public class CartService {
	private final CartDao cartDao = new CartDao();
	private Cart cart = new Cart();
	
    public void viewCart(int id) {
    	cart = cartDao.get(id);
    	forwardToCart();
    }
    
    public void forwardToCart() {}
    public void addProductToCart() {}
}
