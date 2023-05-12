package com.onlinestorewepr;

import com.onlinestorewepr.daos.UserDao;
import com.onlinestorewepr.models.Cart;
import com.onlinestorewepr.models.User;

public class Main {
  public static void main(String[] args) {
    UserDao userDAO = new UserDao();
    User user = userDAO.get("admin");
    if (user == null) {
      user = new User("admin", "admin", true, "Admin", null);
      userDAO.insert(user);
    }

    User customerUser = userDAO.get("customer");
    if (customerUser == null) {
      Cart cart = new Cart();
      customerUser = new User("customer", "customer", false, "Customer", cart);
      userDAO.insert(customerUser);
    }
  }
}