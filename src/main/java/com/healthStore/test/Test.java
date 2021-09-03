package com.healthStore.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class Test {
 
	@RequestMapping("/test")
	@ResponseBody
	public String test() {
		return "hello world!!";
	}
	
	@RequestMapping("/test2")
	public String testJsp() {
		
		return "test/test";
	}
}
