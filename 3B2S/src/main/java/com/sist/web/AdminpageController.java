package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminpageController {

	   @GetMapping("adminpage/adminpage_main.do")
	   public String adminpage_main(){
		   return "adminpage";
	   }
	   @GetMapping("adminpage/admin_reserve.do")
	   public String admin_reserve(){
		   return "adminpage/admin_reserve";
	   }
	   
	   @GetMapping("adminpage/admin_buy.do")
	   public String admin_buy(){
		   return "adminpage/admin_buy";
	   }
	   
	   @GetMapping("adminpage/admin_member.do")
	   public String admin_member(){
		   return "adminpage/admin_member";
	   }

	   @GetMapping("adminpage/admin_train.do")
	   public String admin_train() {
		   return "adminpage/admin_train";
	   }
	   
	   @GetMapping("adminpage/admin_ticket.do")
	   public String admin_ticket() {
		   return "adminpage/admin_ticket";
	   }
}

