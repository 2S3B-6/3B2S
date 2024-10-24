package com.sist.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.service.ScheduleService;
import com.sist.service.TeamService;
import com.sist.vo.ScheduleVO;
import com.sist.vo.TeamVO;

// jsp 연동
@Controller
@RequestMapping("main/")
public class MainController {
	
	@Autowired
	private ScheduleService sService;
	@Autowired
	private TeamService tService;
	
	// 필요한 클래스 => 스프링에서 가지고 온다 (객체 주소)
	// 사용자의 요청에 따라 처리
	@GetMapping("main.do")
	public String main_main(Model model) {   
		
		List<ScheduleVO> sList=sService.scheduleListMainData();
		List<TeamVO> rList=tService.teamRankingMainData();
		
		model.addAttribute("sList", sList);
		model.addAttribute("rList", rList);
		
		return "main";   
	}
}
