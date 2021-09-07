package com.healthStore.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {

	@RequestMapping("/main_page_view")
	public String main() {
		
		return "template/layout";
	}
	
	
	
	@RequestMapping("/sign_in_view")
	public String signInView(Model model) {
		model.addAttribute("viewName", "user/sign_in");
		
		return "user/sign_in";
		
	}
	
	@RequestMapping("sign_up_view")
	public String signUpForSubmit(Model model) {
		model.addAttribute("viewName", "user/sign_up");
		
		return "user/sign_up";
	}
}
