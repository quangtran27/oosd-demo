package com.oosd.services;

import com.oosd.daos.ProductDAO;
import com.oosd.daos.ReviewDAO;
import com.oosd.models.Product;
import com.oosd.models.Review;
import com.oosd.utils.Validators;

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
        boolean result = Validators.validateReview(review);
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
