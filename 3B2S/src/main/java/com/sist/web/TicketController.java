package com.sist.web;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class TicketController {
   @GetMapping("ticket/ticket_main.do")
   public String ticket_main(Model model , HttpSession session)
   {
	   String id=(String)session.getAttribute("userId");
	   model.addAttribute("sessionId",id);
	   return "ticket/ticket_main";
   }
   @GetMapping("ticket/ticketchoice.do")
   public String ticketchoice()
   {
	   
	   
	   return "ticket/ticketchoice";
   }
   
   
}