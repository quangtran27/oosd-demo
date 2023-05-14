package com.oosd.daos;

import com.oosd.models.CartItem;

public class CartItemDAO {
    public CartItem get(int id) {
        return null;
    }

    public void insert(CartItem cartItem) {
        System.out.println("Insert cart item");
    }

    public void update(CartItem cartItem) {
        System.out.println("Update cart item");
    }
    public void delete(CartItem cartItem) {
        System.out.println("Delete cart item");
    }

}
