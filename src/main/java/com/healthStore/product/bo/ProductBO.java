package com.healthStore.product.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.healthStore.product.dao.ProductDAO;

@Service
public class ProductBO {
    @Autowired
    private ProductDAO productDAO;
	
	public int insertProduct(String productName, int price) {
		return productDAO.insertProduct(productName,price);
	}
}
