package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {
	@GetMapping("mypage/mypage_main.do")
	public String mypage_main() {
		return "mypage";
	}

	@GetMapping("mypage/mypage_reserve.do")
	public String mypage_reserve() {
		return "mypage/mypage_reserve";
	}
	
	 
	@GetMapping("mypage/mypage_cart.do") 
	public String mypage_cart() { 
		return "mypage/mypage_cart"; 
	}
	  
	@GetMapping("mypage/mypage_buy.do") 
	public String mypage_buy() { 
		return "mypage/mypage_buy"; 
	}
	 
	@GetMapping("mypage/mypage_board.do") 
	public String mypage_board() { 
		return "mypage/mypage_board"; 
	}
	
	@GetMapping("mypage/mypage_comment.do") 
	public String mypage_comment() { 
		return "mypage/mypage_comment"; 
	}
	
	@GetMapping("mypage/mypage_home.do")
	public String mypage_home()	{
		return "mypage/mypage_home";
	}
	@GetMapping("mypage/mypage_train.do")
	public String mypage_train()	{
		return "mypage/mypage_train";
	}
	
}
