package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.sist.vo.*;
import com.sist.service.*;
@Controller
public class TrainController {
	@Autowired
	private TrainService tService;
	
	@GetMapping("train/list.do")
    public String train_list()
    {
 	   return "train/list";
    }
	@GetMapping("train/reserve.do")
    public String train_reserve(Model model ,HttpServletRequest request)
    {
		String ttype = request.getParameter("ttype");
		String tno = request.getParameter("tno");
		String sstart = request.getParameter("sstart");
		String send = request.getParameter("send");
		String tstart = request.getParameter("tstart");
		String tend = request.getParameter("tend");
		String departureDate = request.getParameter("departureDate");
 	   
		model.addAttribute("ttype", ttype);
		model.addAttribute("tno", tno);
		model.addAttribute("sstart", sstart);
		model.addAttribute("send", send);
		model.addAttribute("tstart", tstart);
		model.addAttribute("tend", tend);
		model.addAttribute("tday", departureDate);
		
		return "train/reserve";
    }
}
