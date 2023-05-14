package com.onlinestorewepr;

import com.onlinestorewepr.daos.UserDAO;
import com.onlinestorewepr.models.Cart;
import com.onlinestorewepr.models.User;

public class Main {
  public static void main(String[] args) {
    UserDAO userDAO = new UserDAO();
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