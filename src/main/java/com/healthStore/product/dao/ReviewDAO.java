package com.healthStore.product.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewDAO {
   public insertReview(
		   @Param("productId") int productId,
		   @Param("writer") String writer,
		   @Param("grade") double grade,
		   @Param("review") String grade);
}
