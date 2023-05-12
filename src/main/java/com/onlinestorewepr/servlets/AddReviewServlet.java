package com.onlinestorewepr.servlets;

import com.onlinestorewepr.services.ReviewService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@MultipartConfig
@WebServlet(value = {"/reviews/add"})
public class AddReviewServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    ReviewService reviewService = new ReviewService();
    reviewService.showWriteReview();
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    ReviewService reviewService = new ReviewService();
    reviewService.addReview();
  }
}
