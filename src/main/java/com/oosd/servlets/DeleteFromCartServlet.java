package com.oosd.servlets;

import com.oosd.models.CartItem;
import com.oosd.services.CartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteFromCartServlet", value = "/DeleteFromCartServlet")
public class DeleteFromCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CartService cartService = new CartService(request, response);
        CartItem[] list = {};
        cartService.deleteItem(list);
    }
}
