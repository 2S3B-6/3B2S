package com.sist.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;
import java.util.Date;
import java.text.*;
import com.sist.vo.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sist.service.*;
import java.sql.*;


@RestController
public class StadiumRestController {
	@Autowired
    private StadiumService sService;
	
	@GetMapping(value="stadium/detail_vue.do",produces = "text/plain;charset=UTF-8")
	public String stadium_detail(int no) throws Exception
	   {
		   StadiumVO vo=sService.stadiumDetailData(no);
		   ObjectMapper mapper=new ObjectMapper();
		   String json=mapper.writeValueAsString(vo);
		   return json;
	   }
}
