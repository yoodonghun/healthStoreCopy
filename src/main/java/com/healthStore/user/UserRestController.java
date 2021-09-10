package com.healthStore.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.healthStore.common.EncryptUtils;
import com.healthStore.user.bo.UserBO;
import com.healthStore.user.model.User;

@RequestMapping("/user")
@RestController
public class UserRestController {
	@Autowired
	private UserBO userBO;
	
	
   @RequestMapping("is_duplicated_id")
   public Map<String, Boolean> isDuplicatedId(
		   @RequestParam("loginId") String loginId){
	   
	   Map<String, Boolean> result = new HashMap<>();
	   User user = userBO.selectUserByLoginId(loginId);
	   if(user == null) {
		   result.put("result", false);
	   }else {
		   result.put("result", true);
	   }
	   
	   return result;
   }
   
   
   @RequestMapping("/sign_up_for_ajax")
   public Map<String, String> signUpForAjax(
		      @RequestParam("loginId") String loginId,
			  @RequestParam("password") String password,
			  @RequestParam("name") String name,
			  @RequestParam("email") String email){
	   
	   
	   String encryptPassword = EncryptUtils.md5(password);
	   
	   
	   int row =  userBO.insertUser(loginId, encryptPassword, name, email);
	   
	  
	   Map<String, String> result = new HashMap<>();
	   if (row == 1) {
			result.put("result", "success");
		} else {
			result.put("error", "입력 실패");
		}
	   
	   return result;
	   
   }
   
   @RequestMapping("/sign_in")
	public Map<String, Object> signIn(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			HttpServletRequest request) {
		
		String encryptPassword = EncryptUtils.md5(password);
		User user = userBO.getUserByLoginIdAndPassword(loginId, encryptPassword);
		
		Map<String, Object> result = new HashMap<>();
		if (user != null) {
			result.put("result", "success");
			
			HttpSession session = request.getSession();
			session.setAttribute("userLoginId", user.getLoginId());
			session.setAttribute("userName", user.getName());	
			session.setAttribute("userId", user.getId());	
		} else {
			result.put("error", "존재하지 않는 사용자 입니다.");
		}
		return result;
	}
   
}
