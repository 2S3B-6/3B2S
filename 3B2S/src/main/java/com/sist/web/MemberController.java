package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.sist.service.MemberService;
import com.sist.vo.MemberVO;

@Controller
public class MemberController {
	   
	   @GetMapping("member/join.do")
	   public String member_join()
	   {
		   return "member/join";
	   }
}
