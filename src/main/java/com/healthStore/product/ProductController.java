package com.healthStore.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.healthStore.product.bo.ProductBO;
import com.healthStore.product.model.Product;

@RequestMapping("/product")
@Controller
public class ProductController {
	@Autowired
	private ProductBO productBO;
    
	@RequestMapping("/upperBody_view")
	public String upperView() {		
		
		return "part/upper";
	}
	
	@RequestMapping("/lowerBody_view")
	public String lowerView() {		
		
		return "part/lower";
	}
	
	@RequestMapping("/abdominal_view")
	public String abdominalView() {		
		
		return "part/abdominal";
	}
	
	@RequestMapping("/detail_view")
	public String detailView() {
		
		return "part/detail";
	}
	
	@RequestMapping("productList")
	public String productList(Model model) {
		List<Product> productList = productBO.getProductList();
		model.addAttribute("productList", productList);
		return "part/detail";
	}
	
}
