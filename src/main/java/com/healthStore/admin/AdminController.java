package com.healthStore.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.healthStore.product.bo.ProductBO;
import com.healthStore.product.model.Product;
import com.healthStore.user.bo.UserBO;
import com.healthStore.user.model.User;

@RequestMapping("/admin")
@Controller
public class AdminController {
	@Autowired
	private ProductBO productBO;
	@Autowired
	private UserBO userBO;
    
	@RequestMapping("/adminInfo_view")
	public String adminInfoView() {
		
		return "admin/info";
	}
	
	@RequestMapping("/userList_view")
	public String userList(Model model) {
		List<User> userList = userBO.getUserList();
		model.addAttribute("userList", userList);
		return "admin/userList";
	}
	
	@RequestMapping("/sale_view")
	public String sale(Model model) {
		List<Product> productDetail = productBO.getProductDetail();
		model.addAttribute("productDetail", productDetail);
		return "admin/sale";
	}
	
	@RequestMapping("/saleList_view")
	public String saleList(Model model) {
		List<Product> productDetail = productBO.getProductDetail();
		model.addAttribute("productDetail", productDetail);
		return "admin/saleList";
	}
}
