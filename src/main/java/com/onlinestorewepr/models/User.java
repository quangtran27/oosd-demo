package com.onlinestorewepr.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "users")
public class User {
   @Id
   private String username;
   private String password;
   private boolean isAdmin;
   private String name;
   private String phone;
   private String image;
   private String email;
   private String gender;
   private String address;

   @OneToOne(cascade = CascadeType.ALL)
   @JoinColumn(name = "cartId", referencedColumnName = "id")
   private Cart cart;

   @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
   private List<Order> orders;

   public String getUsername() {
      return username;
   }
   public void setUsername(String username) {
      this.username = username;
   }
   public String getImage() {
      return image;
   }
   public void setImage(String image) {
      this.image = image;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
   }
   public boolean isAdmin() {
      return isAdmin;
   }
   public void setAdmin(boolean admin) {
      isAdmin = admin;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getPhone() {
      return phone;
   }
   public void setPhone(String phone) {
      this.phone = phone;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public String getGender() {
      return gender;
   }
   public void setGender(String gender) {
      this.gender = gender;
   }
   public String getAddress() {
      return address;
   }
   public void setAddress(String address) {
      this.address = address;
   }
   public Cart getCart() {
      return cart;
   }
   public void setCart(Cart cart) {
      this.cart = cart;
   }
   public List<Order> getOrders() {
      return orders;
   }
   public void setOrders(List<Order> orders) {
      this.orders = orders;
   }

   public User() {}
   public User(String username, String password, boolean isAdmin, String name, Cart cart) {
      this.username = username;
      this.password = password;
      this.isAdmin = isAdmin;
      this.name = name;
      this.cart = cart;
   }
}
