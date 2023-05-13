package com.onlinestorewepr.servlets;

import com.onlinestorewepr.models.Product;
import com.onlinestorewepr.services.ProductService;
import com.onlinestorewepr.utils.Validator;

import javax.naming.directory.SearchResult;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = {"/admin/products"})
public class ProductServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    ProductService productService = new ProductService(request, response);
    productService.listProducts();
  }

}
