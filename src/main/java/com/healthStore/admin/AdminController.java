package com.healthStore.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
@Controller
public class AdminController {
    
	@RequestMapping("/adminInfo_view")
	public String adminInfoView() {
		
		return "admin/info";
	}
	
	@RequestMapping("/userList_view")
	public String userList() {
		
		return "admin/userList";
	}
	
	@RequestMapping("/sale_view")
	public String sale() {
		
		return "admin/sale";
	}
	
	@RequestMapping("/saleList_view")
	public String saleList() {
		
		return "admin/saleList";
	}
}
