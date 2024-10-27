package com.sist.web;

import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.vo.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sist.service.*;

@RestController
public class AdminpageRestController {
	@Autowired 
	private ReserveService rService;
	@Autowired
	private HotelService hService;
	@Autowired
	private KboGoodsService kgService;
	@Autowired
	private BoardService bService;
	@Autowired
	private CommentService cService;
	@Autowired
	private MemberService mService;
	@Autowired
	private NewsService nService;
	   
	//예약관리
	@GetMapping(value="adminpage/reserve_info_vue.do",produces="text/plain;charset=UTF-8")
	public String reserve_info(int hno , int rno) throws Exception{
		   System.out.println("rno:"+rno);
		   rService.reserveOk(rno);
		   List<ReserveVO> list=rService.reserveAdminListData();
		   ObjectMapper mapper=new ObjectMapper();
		   String json=mapper.writeValueAsString(list);
		   return json;
	}
	@GetMapping(value="adminpage/admin_reserve_vue.do",produces = "text/plain;charset=UTF-8")
	  public String admin_reserve(HttpSession session) throws Exception{
		   List<ReserveVO> list=rService.reserveAdminListData();
		   ObjectMapper mapper=new ObjectMapper();
		   String json=mapper.writeValueAsString(list);
		   
		   return json;
	  }
	
	//구매관리
	@GetMapping(value="adminpage/buy_vue.do",produces = "text/plain;charset=UTF-8")
	public String goods_buy_vue(int fd, HttpSession session)throws Exception{
		
		Map map=new HashMap();
		map.put("fd", fd);
		
		List<KboGoodsCartVO> list=kgService.goodsAdminBuyListData(map);
		System.out.println(list);
		
		ObjectMapper mapper=new ObjectMapper();
		String json=mapper.writeValueAsString(list);
		
		return json;
	}
	
	  @GetMapping(value="adminpage/cart_cancel_vue2.do",produces = "text/plain;charset=UTF-8")
	  public String cart_cancel2(int fd,int cno,HttpSession session) throws Exception{
		  Map map=new HashMap();
			map.put("fd", fd);
		  
		  kgService.goodsCartCancel(cno);

		  List<KboGoodsCartVO> list=kgService.goodsAdminBuyListData(map);
		  ObjectMapper mapper=new ObjectMapper();
		  String json=mapper.writeValueAsString(list);
		  return json;
	  }
	  
	  
	
	
	
	

}
