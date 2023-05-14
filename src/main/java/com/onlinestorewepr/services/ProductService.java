package com.onlinestorewepr.services;

import com.onlinestorewepr.daos.CategoryDAO;
import com.onlinestorewepr.daos.ProductDAO;
import com.onlinestorewepr.models.Category;
import com.onlinestorewepr.models.Product;
import com.onlinestorewepr.utils.Validator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collections;
import java.util.List;

public class ProductService {
    private final HttpServletRequest request;
    private final HttpServletResponse response;
    private final ProductDAO productDAO;
    private final CategoryDAO categoryDAO;
    List<Product> products;
    List<Category> categories;
    String message = "";
    String messageType = "";

    public ProductService(HttpServletRequest req, HttpServletResponse resp) {
        request = req;
        response = resp;
        productDAO = new ProductDAO();
        categoryDAO = new CategoryDAO();
    }

    public void listProducts() throws ServletException, IOException {
        products = productDAO.getAll();
        forwardToProductManagementPage();
    }

    public void showAddProduct() throws ServletException, IOException {
        categories = categoryDAO.getAll();
        forwardToAddProduct();
    }

    public void addProduct() throws ServletException, IOException {
        Product product = new Product();
        readData(product);

        boolean result = Validator.validateProduct(product);
        if (result) {
            Part part = request.getPart("image");
            String imageName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
            String realPath = request.getServletContext().getRealPath("/images");
            // Check if path exist, if not, create a new one
            Path path = Paths.get(realPath);
            if (!Files.exists(path)) {
                Files.createDirectories(path);
            }
            part.write(realPath + "/" + imageName);
            String image = String.format("images/%s", imageName);
            product.setImage(image);
            // ------------------

            saveProduct(product);
            message = "A new product was created successfully!";
            messageType = "success";
        } else {
            message = "All fields cannot be empty!";
            messageType = "danger";
        }
        request.setAttribute("message", message);
        request.setAttribute("messageType", messageType);
        showAddProduct();
    }

    public void forwardToProductManagementPage() throws ServletException, IOException {
        request.setAttribute("products", products);
        request.getRequestDispatcher("/admin/products.jsp").forward(request, response);
    }

    public void forwardToAddProduct() throws ServletException, IOException {
        request.setAttribute("action", "add");
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/admin/update-product.jsp").forward(request, response);
    }

    public void readData(Product product) {
        try {
            Category category = categoryDAO.get(Integer.parseInt(request.getParameter("category-id")));
            String name = request.getParameter("name");
            String image = "temp";
            boolean available = request.getParameter("available") == null || (request.getParameter("available").equals("1"));
            String description = request.getParameter("description");
            Double price = Double.parseDouble(request.getParameter("price"));
            Double discount = Double.parseDouble(request.getParameter("salePrice"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String size = request.getParameter("size");
            String color = request.getParameter("color");
            String brand = request.getParameter("brand");

            product.setAvailable(available);
            product.setCategory(category);
            product.setName(name);
            product.setImage(image);
            product.setDescription(description);
            product.setPrice(price);
            product.setSalePrice(discount);
            product.setQuantity(quantity);
            product.setSize(size);
            product.setColor(color);
            product.setBrand(brand);
            product.setSold(0);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public void saveProduct(Product product) {
        productDAO.insert(product);
    }

    public List<Product> searchProduct(String productKeyword) {
        String message = "Invalid input";
        List<Product> proList = null;
        proList = productDAO.getListProByName(productKeyword);
        return proList;
    }

    public List<Product> getListProByName(String name) {
        return Collections.emptyList();
    }

    public void displayProducts(String message, List<Product> searchProductsResultList) throws ServletException, IOException{
        forwardToSearchResultPage(message,searchProductsResultList);
    }

    private void forwardToSearchResultPage(String message, List<Product> searchProductsResultList) throws ServletException, IOException {
        request.setAttribute("products", searchProductsResultList);
        request.setAttribute("message", message);
        request.getRequestDispatcher("/user/productSearchResult.jsp").forward(request, response);

    }

    public void searResultList() {
    }

    public void displayAllProducts() {

    }

    public Product getProductDetailByProId(int proId) {
        ProductDAO productDao = new ProductDAO();
        Product product = new Product();
        product = productDao.get((proId));
        return product;
    }

    public void displayDetail(Product product) throws ServletException, IOException {
        forwardToProDetailPage(product);
    }

    private void forwardToProDetailPage(Product product) throws ServletException, IOException {
        request.setAttribute("products", product);
        request.getRequestDispatcher("/user/proDetailPage.jsp").forward(request, response);
    }
}
