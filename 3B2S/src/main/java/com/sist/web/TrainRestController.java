package com.sist.web;
import java.util.*;

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
    
//    @GetMapping(value="train/list_vue.do",produces="text/plain;charset=UTF-8")
//	public String train_list(int page) throws Exception 
//    {	
//		int rowSize=10;
//		int start=(rowSize*page)-(rowSize-1);
//		int end=rowSize*page;
//		Map map=new HashMap();
//	    map.put("start",start);
//	    map.put("end", end);
//	
//		
//		List<TrainVO> list=tService.trainListData(start, end);
//		int totalpage=tService.trainTotalPage();
//		
//		final int BLOCK=10;
//		int startPage=((page-1)/BLOCK*BLOCK)+1;
//		int endPage=((page-1)/BLOCK*BLOCK)+BLOCK;
//		if(endPage>totalpage)
//			endPage=totalpage;
//		
//		map=new HashMap();
//		map.put("list", list);
//		map.put("curpage", page);
//		map.put("totalpage", totalpage);
//		map.put("startPage", startPage);
//		map.put("endPage", endPage);
//
//		ObjectMapper mapper=new ObjectMapper();
//		String json=mapper.writeValueAsString(map);
//		
//		return json;
//	}
//    
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
    public String reserve_ok(TrainReserveVO vo)
    {
    	String result="";
    	System.out.println("vo:"+vo);
    	result="yes";
    	
    	return result;
    }
}
