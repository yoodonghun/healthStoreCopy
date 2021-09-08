package com.healthStore.user.bo;

import org.springframework.stereotype.Service;

@Service
public class UserBO {
   public int insertUser(String loginId, String password, String name, String email) {
	   return userDAO.insertUser(loginId, password, name, email);
   }
}
