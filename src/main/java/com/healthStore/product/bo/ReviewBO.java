package com.healthStore.product.bo;

import org.springframework.stereotype.Service;

import com.healthStore.product.model.Review;

@Service
public class ReviewBO {

	public Review insertReview(int productId, String writer, double grade, String review) {
		
		return reviewDAO.insertReview(productId, writer, grade, review);
	}
}
