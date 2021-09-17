package com.healthStore.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
@Controller
public class AdminController {
    
	@RequestMapping("adminInfo_view")
	public String daminInfoView() {
		
		return "admin/info";
	}
}
