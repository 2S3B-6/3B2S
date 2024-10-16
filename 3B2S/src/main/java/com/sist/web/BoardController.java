package com.sist.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class BoardController {
   @GetMapping("board/list.do")
   public String board_list()
   {
	   return "board/list";
   }
   
   @GetMapping("board/insert.do")
   public String board_insert()
   {
	   return "board/insert";
   }
   @GetMapping("board/detail.do")
   public String board_detail(int no,Model model,HttpSession session)
   {
	   String sessionId=(String)session.getAttribute("userId");
	   model.addAttribute("no", no);
	   model.addAttribute("sessionId", sessionId);
	   return "board/detail";
   }
   @GetMapping("board/update.do")
   public String board_update(int no,Model model)
   {
	   model.addAttribute("no", no);
	   return "board/update";
   }
}