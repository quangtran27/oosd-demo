package com.oosd.utils;

import com.oosd.models.Order;
import com.oosd.models.Product;
import com.oosd.models.Review;

public class Validators {
    public static boolean validateProduct(Product product) {
        if (product.getName() == null || product.getName().isEmpty()) {
            return false;
        }

        if (product.getDescription() == null || product.getDescription().isEmpty()) {
            return false;
        }

        if (product.getPrice() == null) {
            return false;
        }

        if (product.getQuantity() <= 0) {
            return false;
        }

        if (product.getSize() == null || product.getSize().isEmpty()) {
            return false;
        }

        if (product.getColor() == null || product.getColor().isEmpty()) {
            return false;
        }

        if (product.getBrand() == null || product.getBrand().isEmpty()) {
            return false;
        }

        if (product.getCategory() == null) {
            return false;
        }

        return true;
    }

    public static boolean validateReview(Review review) {
        return true;
    }

    public static boolean validateOrder(Order order) {
        return true;
    }

    public static boolean validateProductName(String productName) {
        return true;
    }

    public static boolean isValidEmail(String inputEmail) {
        return true;
    }

    public static boolean isValidOTP(String inputOTP) {
        return true;
    }

    public static boolean isValidNewPassword(String newPassword, String confirmPassword) {
        return true;
    }

    public static boolean isValidUserInfo(String phone, String email) {
        return true;
    }
}
