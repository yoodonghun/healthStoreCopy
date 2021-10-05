package com.healthStore.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.healthStore.common.EncryptUtils;
import com.healthStore.user.bo.UserBO;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	private UserBO userBO;

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
	
	@RequestMapping("/sign_up_for_submit")
	public String signUpForSubmit(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("name") String name,
			@RequestParam("email") String email) {
		
		String encryptPassword = EncryptUtils.md5(password);
		userBO.insertUser(loginId, encryptPassword, name, email);
		
		return "redirect:/user/sign_in_view";
	}
	
	@RequestMapping("/sign_out")
	public String signOut(HttpServletRequest request) {
		//로그아웃
		HttpSession session = request.getSession();
		session.removeAttribute("userLoginId");
		session.removeAttribute("userName");
		session.removeAttribute("userId");
		
		return "redirect:/user/sign_in_view";
	}
	
		
	@RequestMapping("/warning_view")
	public String warningView() {
		
		return "other/warning";
	}
	
	
	
}
