package com.oosd.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "cart")
public class Cart {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id;
   @OneToOne(mappedBy = "cart")
   private User user;
   @OneToMany(mappedBy = "cart", cascade = CascadeType.ALL)
   private List<CartItem> cartItems;

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public User getUser() {
      return user;
   }

   public void setUser(User user) {
      this.user = user;
   }

   public List<CartItem> getCartItems() {
      return cartItems;
   }

   public void setCartItems(List<CartItem> cartItems) {
      this.cartItems = cartItems;
   }
}
