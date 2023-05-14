package com.onlinestorewepr.services;

import com.onlinestorewepr.daos.ProductDAO;
import com.onlinestorewepr.daos.ReviewDAO;
import com.onlinestorewepr.models.Product;
import com.onlinestorewepr.models.Review;
import com.onlinestorewepr.utils.Validator;

public class ReviewService {
    int productId = 1;
    int customerId = 1;
    private final ProductDAO productDao = new ProductDAO();
    private final ReviewDAO reviewDao = new ReviewDAO();
    public ReviewService() {}
    public void showWriteReview() {
        Product product = productDao.get(productId);
        Review review = reviewDao.getProductReviewByCustomer(productId, customerId);

        if (review == null) {
            forwardToReviewForm();
        }
        forwardToReviewInfo();
    }
    public void forwardToReviewForm() {}
    public void forwardToReviewInfo() {}
    public void addReview() {
        Review review = new Review();
        readData(review);
        boolean result = Validator.validateReview(review);
        if (result) {
            saveReview(review, productId);
            reviewDao.insert(review);
        }
        forwardToReviewInfo();
    }
    public void readData(Review review) {}
    public void saveReview(Review review, int productId) {
        Product product = productDao.get(productId);
        review.setProduct(product);
    }
}
