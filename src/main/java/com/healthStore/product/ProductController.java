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

	@RequestMapping("/main_page_view")
	public String main(Model model) {
		List<Product> productDetail = productBO.getProductDetail();
		model.addAttribute("productDetail", productDetail);
		return "template/layout";
	}

	@RequestMapping("/himssen_upperBody_view")
	public String upperView(Model model) {
		List<Product> productDetail = productBO.getProductDetail();
		model.addAttribute("productDetail", productDetail);

		return "part/upper";
	}

	@RequestMapping("/himssen_lowerBody_view")
	public String lowerView(Model model) {
		List<Product> productDetail = productBO.getProductDetail();
		model.addAttribute("productDetail", productDetail);

		return "part/lower";
	}

	@RequestMapping("/himssen_abdominal_view")
	public String abdominalView(Model model) {
		List<Product> productDetail = productBO.getProductDetail();
		model.addAttribute("productDetail", productDetail);

		return "part/abdominal";
	}

	@RequestMapping("/detail_view")
	public String detailView(Model model) {
		List<Product> productDetail = productBO.getProductDetail();
		model.addAttribute("productDetail", productDetail);

		return "part/detail";
	}

	@RequestMapping("/cart_view")
	public String customerServiceView() {

		return "other/cart";
	}

	@RequestMapping("/productDetail")
//	public String productDetail(String productName, int price, String imagePath, Model model) {
	public String productDetail(Model model) {
		List<Product> productDetail = productBO.getProductDetail();
		model.addAttribute("productDetail", productDetail);
		return "include/content";
	}
}
	
