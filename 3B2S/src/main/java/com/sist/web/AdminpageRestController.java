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
	@Autowired
	private TrainService tService;
	   
	//예약관리
	@GetMapping(value="adminpage/reserve_info_vue.do",produces="text/plain;charset=UTF-8")
	public String reserve_info(int rno) throws Exception{
		   System.out.println("rno:"+rno);
		   rService.reserveOk(rno);
		   List<ReserveVO> list=rService.reserveAdminListData();
		   ObjectMapper mapper=new ObjectMapper();
		   String json=mapper.writeValueAsString(list);
		   return json;
	}
	@GetMapping(value="adminpage/admin_reserve_vue.do",produces = "text/plain;charset=UTF-8")
	  public String admin_reserve() throws Exception{
		   List<ReserveVO> list=rService.reserveAdminListData();
		   ObjectMapper mapper=new ObjectMapper();
		   String json=mapper.writeValueAsString(list);
		   
		   return json;
	  }
	
	//구매관리
	@GetMapping(value="adminpage/buy_vue.do",produces = "text/plain;charset=UTF-8")
	public String goods_buy_vue( HttpSession session)throws Exception{
		

		List<KboGoodsCartVO> list=kgService.goodsAdminBuyListData();
		System.out.println(list);
		
		ObjectMapper mapper=new ObjectMapper();
		String json=mapper.writeValueAsString(list);
		
		return json;
	}
	
	  @GetMapping(value="adminpage/cart_cancel_vue2.do",produces = "text/plain;charset=UTF-8")
	  public String cart_cancel2(int cno,HttpSession session) throws Exception{

		  kgService.goodsCartCancel(cno);

		  List<KboGoodsCartVO> list=kgService.goodsAdminBuyListData();
		  ObjectMapper mapper=new ObjectMapper();
		  String json=mapper.writeValueAsString(list);
		  return json;
	  }
	  
	  
	  @GetMapping(value="adminpage/idcheck_vue.do", produces="text/plain;charset=UTF-8")
		public String adminMember_idcheck() throws Exception{
		  
			List<MemberVO> list=mService.adminMemberInfo();
			System.out.println(list);
			ObjectMapper mapper=new ObjectMapper();
			String json=mapper.writeValueAsString(list);
			return json;
		}
	
	  
	  @GetMapping(value="adminpage/admin_train_vue.do",produces = "text/plain;charset=UTF-8")
	    public String admin_train(HttpSession session) throws Exception
	    {
	    
	    	List<TrainReserveVO> list=tService.trainReserveAdminListData();
	    	
	    	ObjectMapper mapper=new ObjectMapper();
	    	String json=mapper.writeValueAsString(list);
	    	
	    	return json;
	    }

	  @GetMapping(value="adminpage/admin_ticket_vue.do", produces = "text/plain;charset=UTF-8")
	  public String admin_ticket(HttpSession session) throws Exception{

	    	List<GameReserveVO> list=rService.adminGameListData();
	    	
	    	ObjectMapper mapper=new ObjectMapper();
	    	String json=mapper.writeValueAsString(list);
	    	
	    	return json;
	  }
	  
}
