package com.healthStore.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {

	@RequestMapping("/main_page_view")
	public String main() {
		
		return "template/layout";
	}
}
