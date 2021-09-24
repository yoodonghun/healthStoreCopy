package com.healthStore.product.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDAO {

	public int insertProduct(
			@Param("productName") String productName,
			@Param("price") int price);
}
