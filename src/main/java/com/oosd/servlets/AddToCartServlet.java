package com.oosd.servlets;

import com.oosd.services.CartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddToCartServlet", value = "/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CartService cartService = new CartService(request, response);
        cartService.addToCart(1, 1);
    }
}
