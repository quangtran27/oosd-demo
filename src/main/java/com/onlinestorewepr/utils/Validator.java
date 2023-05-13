package com.onlinestorewepr.utils;

import com.onlinestorewepr.models.Order;
import com.onlinestorewepr.models.Product;
import com.onlinestorewepr.models.Review;

public class Validator {
    public static boolean validateProduct(Product product) { return true; }
    public static boolean validateReview(Review review) { return true; }
    public static boolean validateOrder(Order order) { return true; }
    public static boolean validatePassword(String password) { return true; }
    public static boolean validateProductName(String productName) {return true;}
    public static boolean isValidEmail(String inputEmail){return true;}
    public static boolean isValidOTP(String inputOTP) {return true;}
    public static boolean isValidNewPassword(String newPassword, String confirmPassword) {return true;}
    public static boolean isValidUserInfo(String phone, String email) {return true;}
}
