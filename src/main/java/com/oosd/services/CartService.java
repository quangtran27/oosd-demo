package com.oosd.services;

import com.oosd.daos.CartDAO;
import com.oosd.daos.CartItemDAO;
import com.oosd.models.Cart;
import com.oosd.models.CartItem;
import com.oosd.models.Product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CartService {
	private final HttpServletRequest request;
	private final HttpServletResponse response;
	private final CartDAO cartDao;
	private ProductService productService;
	private CartItemDAO cartItemDao;

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
		cartDao = new CartDAO();
		cartItemDao = new CartItemDAO();
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
