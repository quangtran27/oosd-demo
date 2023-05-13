package com.onlinestorewepr.servlets;

import com.onlinestorewepr.models.Product;
import com.onlinestorewepr.services.ProductService;
import com.onlinestorewepr.utils.Validator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/UserProductServlet.java")
public class UserProductServletjava extends HttpServlet {
    Boolean checkValid = false;
    String productKeyword = null;
    String message = null;
    int proId = -1;
    Product product = new Product();
    List<Product> searchProductsResultList = null;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService productService = new ProductService(request, response);
        //Nếu người dùng không tìm kiếm thì hiển thị hết tất cả products
        if(searchProductsResultList.isEmpty())
            productService.displayAllProducts();
        //Nếu người dùng có tìm kiếm thì hiển thị các sản phẩm match
        else
            productService.displayProducts(message,searchProductsResultList);
        if (proId != -1)
            product = productService.getProductDetailByProId(proId);
        if (product != null)
            productService.displayDetail(product);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        ProductService productService = new ProductService(req, resp);
        productKeyword = req.getParameter("productKeyword");
        proId = Integer.parseInt(req.getParameter("proId").toString());
        checkValid = Validator.validateProductName(productKeyword);
        //if input is valid, search products matching the input
        if (checkValid){
            searchProductsResultList = productService.searchProduct(productKeyword);
            if(searchProductsResultList.size() > 0)
                message = searchProductsResultList.size() + " items found!!";
            else
                message = "No items found!!";
        }
        //if input is invalid, display corresponding message
        else
        {
            message = "Invalid input!!";
        }
    }
}
