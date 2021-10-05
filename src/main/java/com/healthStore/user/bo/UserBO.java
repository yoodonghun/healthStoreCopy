package com.healthStore.user.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.healthStore.user.dao.UserDAO;
import com.healthStore.user.model.User;

@Service
public class UserBO {
	@Autowired
	private UserDAO userDAO;
	
   public int insertUser(String loginId, String password, String name, String email) {
	   return userDAO.insertUser(loginId, password, name, email);
   }
   
   public User selectUserByLoginId(String loginId) {
	   
	   return userDAO.selectUserByLoginId(loginId);
   }
   
   public User getUserByLoginIdAndPassword(String loginId, String password) {
	   return userDAO.selectUserByLoginIdAndPassword(loginId, password);
   }
   
   public List<User> getUserList(){
	   return userDAO.selectUserList();
   }
}
