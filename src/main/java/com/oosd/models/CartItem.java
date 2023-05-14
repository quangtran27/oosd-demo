package com.oosd.models;

import javax.persistence.*;

@Entity
@Table(name = "cartItem")
public class CartItem {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id;
   private int quantity;
   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "productId", referencedColumnName = "id")
   private Product product;
   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "cartId", referencedColumnName = "id")
   private Cart cart;

   public CartItem() {}
   public CartItem(Cart cart, Product product, int quantity) {
      this.cart = cart;
      this.product = product;
      this.quantity = quantity;
   }

   public int getId() {
      return id;
   }
   public void setId(int id) {
      this.id = id;
   }
   public int getQuantity() {
      return quantity;
   }
   public void setQuantity(int quantity) {
      this.quantity = quantity;
   }
   public Product getProduct() {
      return product;
   }
   public void setProduct(Product product) {
      this.product = product;
   }
   public Cart getCart() {
      return cart;
   }
   public void setCart(Cart cart) {
      this.cart = cart;
   }
}
