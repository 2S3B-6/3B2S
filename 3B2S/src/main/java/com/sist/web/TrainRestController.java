package com.sist.web;
import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.vo.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sist.service.*;
@RestController
public class TrainRestController {
    @Autowired
    private TrainService tService;
       
    @GetMapping(value="train/find_vue.do",produces="text/plain;charset=UTF-8")
	public String train_list(int page,String ttype, String sstart, String send, String tstart) throws Exception 
    {
    	System.out.println(page + ", " + ttype + ", " + sstart + ", " + send + ", " + tstart);
    	
		int rowSize=10;
		int start=(rowSize*page)-(rowSize-1);
		int end=rowSize*page;
		Map map=new HashMap();
	    map.put("start",start);
	    map.put("end", end);
	    map.put("ttype", ttype);
        map.put("sstart", sstart); 
        map.put("send", send); 
        map.put("tstart", tstart); 
		
		List<TrainVO> list=tService.trainFindData(map);
		int totalpage=tService.trainFindTotalPage(map);
		
		final int BLOCK=10;
		int startPage=((page-1)/BLOCK*BLOCK)+1;
		int endPage=((page-1)/BLOCK*BLOCK)+BLOCK;
		if(endPage>totalpage)
			endPage=totalpage;
		
		map=new HashMap();
		map.put("list", list);
		map.put("curpage", page);
		map.put("totalpage", totalpage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);

		ObjectMapper mapper=new ObjectMapper();
		String json=mapper.writeValueAsString(map);
		
		return json;
	}
    
    @PostMapping(value="train/reserve_ok_vue.do",produces = "text/plain;charset=UTF-8")
    public String reserve_ok(TrainReserveVO vo,HttpSession session)
    {
    	String result="";
    	String id=(String)session.getAttribute("userId");
    	System.out.println("vo:"+vo);
    	tService.train_reserve(vo);
    	result="yes";
    	
    	return result;
    }
    
    @GetMapping(value="mypage/mypage_train_vue.do",produces = "text/plain;charset=UTF-8")
    public String mypage_train(HttpSession session) throws Exception
    {
    	String id=(String) session.getAttribute("userId");
    	List<TrainReserveVO> list=tService.reserveMyPageListData(id);
    	
    	ObjectMapper mapper=new ObjectMapper();
    	String json=mapper.writeValueAsString(list);
    	
    	return json;
    }
}
