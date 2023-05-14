package com.onlinestorewepr.services;

import com.onlinestorewepr.daos.CartDao;
import com.onlinestorewepr.daos.CartItemDao;
import com.onlinestorewepr.daos.ProductDao;
import com.onlinestorewepr.models.Cart;
import com.onlinestorewepr.models.CartItem;
import com.onlinestorewepr.models.Product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CartService {
	private final HttpServletRequest request;
	private final HttpServletResponse response;
	private final CartDao cartDao;
	private ProductService productService;
	private ProductDao productDao;
	private CartItemDao cartItemDao;

	private Cart cart = new Cart();
	private int cartId = 1;
    public void viewCart() {
		cart = cartDao.get(cartId);
		forwardToCart();
    }

	public CartService(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
		this.productService = new ProductService(request, response);
		cartDao = new CartDao();
		cartItemDao = new CartItemDao();
	}

	public void forwardToCart() {}
    public void addToCart(int id, int quantity) {
		Product _product = productService.getProductDetailByProId(id);
		if(_product.getQuantity() < quantity){
			Alter("Sản phẩm không tồn tại hoặc số lượng không hợp lệ");
		} else if (_product.getQuantity() >= quantity) {
			CartItem _cartItem = new CartItem(cart, _product, quantity);
			if(_cartItem == null){
				cartItemDao.insert(_cartItem);
			} else{
				_cartItem.setQuantity(quantity);
				cartItemDao.update(_cartItem);
			}
		}
	}

	void Alter(String message){
		//Hàm hiển thị thông báo
	}

	public void deleteItem(CartItem itemList[]){
		for (int i = 1; i <= itemList.length; i++){
			cartItemDao.delete(itemList[i]);
		}
		Alter("Xóa thành công");
	}
}
