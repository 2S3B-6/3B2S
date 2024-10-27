package com.sist.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class RuleController {
   @GetMapping("guide/rule.do")
   public String guide_rule()
   {
	   return "guide/rule";
   }
   @GetMapping("guide/rule_detail.do")
   public String guide_rule_detail(int no,Model model,HttpSession session)
   {
	   String sessionId=(String)session.getAttribute("userId");
	   model.addAttribute("no", no);
	   model.addAttribute("sessionId", sessionId);
	   return "guide/rule_detail";
   }
   
   @GetMapping("guide/rule_serarch.do")
   public String guide_rule_search()
   {
	   return "guide/rule";
   }

   @GetMapping("guide/record.do")
   public String guide_record()
   {
	   return "guide/record";
   }
   
   @GetMapping("guide/goods.do")
   public String guide_goods()
   {
	   return "guide/goods";
   }
   
   @GetMapping("guide/manner.do")
   public String guide_manner()
   {
	   return "guide/manner";
   }
   
   @GetMapping("guide/reserve.do")
   public String guide_reserve()
   {
	   return "guide/reserve";
   }
   
   
   
 
}