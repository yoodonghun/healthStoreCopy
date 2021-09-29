package com.healthStore.product.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.healthStore.product.dao.ProductDAO;
import com.healthStore.product.model.Product;

@Service
public class ProductBO {
    @Autowired
    private ProductDAO productDAO;
	
	public int insertProduct(int productId,String productName, int price, String imagePath) {
		return productDAO.insertProduct(productId, productName,price,imagePath);
	}
	

	public List<Product> getProductList(String productName, int price, String imagePath){
		return productDAO.selectProductList(productName,price,imagePath);
	}
	
}
