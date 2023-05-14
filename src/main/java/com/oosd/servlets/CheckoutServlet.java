package com.oosd.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oosd.services.OrderService;



@WebServlet(value = {"/checkout"})
public class CheckoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		OrderService orderService = new OrderService(req, resp);
		orderService.viewCheckout();
	}
	
}
