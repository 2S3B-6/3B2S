package com.sist.mapper;

import java.util.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.sist.vo.GameReserveVO;
import com.sist.vo.GameVO;
import com.sist.vo.HotelVO;
import com.sist.vo.JjimVO;
import com.sist.vo.ReserveVO;
import com.sist.vo.TrainReserveVO;

public interface ReserveMapper {
	
	/////////////////////////////// HOTEL ////////////////////////////////////////
	@Insert("INSERT INTO reserve_hotel(rno,hno,id,rday,rroom,rprice) "
			+ "  VALUES(hr_rno_seq.nextval,#{hno},#{id},#{rday},#{rroom},#{rprice})")
	public void reserveInsert(ReserveVO vo);
	
	@Results({
		@Result(property="hvo.poster",column="poster"),
		@Result(property="hvo.name",column="name")
	})
	@Select("SELECT rno,rh.hno,poster,name,rday,rroom,rprice,"
			+ "		TO_CHAR(regdate,'YYYY-MM-DD') as dbday , isReserve "
			+ "  FROM reserve_hotel rh,hotel ht "
			+ "  WHERE rh.hno=ht.hno AND id=#{id} ORDER BY hno DESC")
	public List<ReserveVO> reserveMyPageListData(String id);
	
	
	@Results({
		@Result(property="hvo.poster",column="poster"),
		@Result(property="hvo.name",column="name")
	})
	@Select("SELECT rno,rh.hno,poster,name,rday,rroom,"
			+ "TO_CHAR(rprice, '999,999,999,999') as RPRICE, "
			+ "TO_CHAR(regdate,'YYYY-MM-DD') as dbday, "
			+ "isReserve "
			+ "FROM reserve_hotel rh, hotel ht "
			+ "WHERE rh.hno=ht.hno ORDER BY rno DESC" )
	public List<ReserveVO> reserveAdminListData();
	
	@Update("UPDATE reserve_hotel SET "
			 +"isReserve=1 "
			 +"WHERE rno=#{rno}")
	  public void reserveOk(int rno);
	// 호텔예약 정보 
	  @Results({
		  @Result(property = "hvo.name",column = "name"),
		  @Result(property = "hvo.poster",column = "poster"),
		  @Result(property = "hvo.location",column = "location"),
		  @Result(property = "hvo.address",column = "address"),
		  @Result(property = "hvo.checkin",column = "checkin"),
		  @Result(property = "hvo.checkout",column = "checkout"),
		  @Result(property = "hvo.score",column = "score"),
		  @Result(property = "hvo.price",column = "price"),
	  })
	  @Select("SELECT rno,rday,rroom,rprice,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,"
			 +"name,poster,location,address,checkin,checkout,score,price "
			 +"FROM reserve_hotel rh,hotel ht "
			 +"WHERE rh.hno=ht.hno "
			 +"AND rno=#{rno}")
	  public ReserveVO reserveInfoData(int rno);
	  /////////////////////////////////////////////////////////////////////////////////////////////
	  ///////////////////////////////// Ticket ////////////////////////////////////////////////////
	  @Insert("INSERT INTO game_reserve(rno,tno,id,rday,rseat,rprice,rtype) "
				+ "  VALUES(gr_no_seq.nextval,#{tno},#{id},#{rday},#{rseat},#{rprice},#{rtype})")
		public void gamereserveInsert(GameReserveVO vo);
		@Select("select tno "
				+ " from game "
				+ " where zone=#{type} and price=#{price} and seat=#{seat} and game_date=#{day}")
		public int getTno(Map map);
		/*@Results({
			@Result(property="gvo.poster",column="poster"),
			@Result(property="gvo.name",column="name")
		})
		@Select("SELECT rno,rh.hno,poster,name,rday,rroom,rprice,"
				+ "		TO_CHAR(regdate,'YYYY-MM-DD') as dbday , isReserve "
				+ "  FROM reserve_hotel rh,hotel ht "
				+ "  WHERE rh.hno=ht.hno AND id=#{id} ORDER BY hno DESC")
		public List<ReserveVO> gamereserveMyPageListData(String id);
		@Select("SELECT rno,rh.hno,poster,name,rday,rroom,rprice,"
				+ "		TO_CHAR(regdate,'YYYY-MM-DD') as dbday , isReserve "
				+ "  FROM reserve_hotel rh,hotel ht "
				+ "  WHERE rh.hno=ht.hno ORDER BY hno DESC")
		public List<ReserveVO> gamereserveAdminListData(String id);*/
		
	  
	  @Results({
		  @Result(property = "gvo.game_date",column = "game_date"),
		  @Result(property = "gvo.zone",column = "zone"),
		  @Result(property = "gvo.seat",column = "seat"),
	  })
	    @Select(" select seat "
	    		+ "   from game ga, game_reserve gr "
	    		+ "   where ga.tno=gr.tno and ga.game_date=#{day} and "
	    		+ "   rday = game_date and seat=rseat and zone=#{type} "
	    		+ "   and zone=rtype ")
	    public List<GameReserveVO> gameNoSeatList(Map map);
	  
		@Update("UPDATE game_reserve SET "
				 +"isReserve=1 "
				 +"WHERE rno=#{rno}")
		  public void gamereserveOk(int rno);
		// 호텔예약 정보 
		  @Results({
			  @Result(property = "gvo.home",column = "home"),
			  @Result(property = "gvo.away",column = "away"),
			  @Result(property = "gvo.game_date",column = "game_date"),
			  @Result(property = "gvo.zone",column = "zone"),
			  @Result(property = "gvo.seat",column = "seat"),
			  @Result(property = "gvo.price",column = "price"),
		  })
		  @Select("SELECT rno,rday,rseat,rprice,TO_CHAR(regdate,'YYYY-MM-DD') as dbday "
				 +"FROM game_reserve gr,game ga"
				 +"WHERE gr.tno=ga.tno "
				 +"AND rno=#{rno}")
		  public ReserveVO gamereserveInfoData(int rno);
	  /////////////////////////////////////////////////////////////////////////////////////////////
		  
		  
			@Select("SELECT rno, tno, id, rday, rseat, rprice, regdate, isreserve, rtype "
					+ " FROM game_reserve"
					+ " WHERE id=#{id}")
			public List<GameReserveVO> MyPageGameListData(String id);
			
			@Select("SELECT jj.hno, id, name, price, address, location  "
					+ " FROM jjim jj, hotel ho"
					+ " WHERE jj.hno=ho.hno AND id=#{id}")
			public List<JjimVO> MyPageJjimListData(String id);	
			
			@Select("SELECT rno, tno, id, rday, rseat, rprice, regdate, isreserve, rtype "
					+ " FROM game_reserve")
			public List<GameReserveVO> adminGameListData();
}
