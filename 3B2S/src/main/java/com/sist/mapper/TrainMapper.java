package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
/*
 *  TNO    NOT NULL NUMBER       
	TTYPE  NOT NULL VARCHAR2(20) 
	SSTART NOT NULL VARCHAR2(30) 
	SEND   NOT NULL VARCHAR2(30) 
	TSTART NOT NULL VARCHAR2(30) 
	TEND   NOT NULL VARCHAR2(30) 
	PRICE  NOT NULL NUMBER   
 */
import com.sist.vo.*;
public interface TrainMapper {
	
	@Select("SELECT tno,ttype,sstart,send,tstart,tend,price,num "
		       +"FROM (SELECT tno,ttype,sstart,send,tstart,tend,price,rownum as num "
		       +"FROM (SELECT tno,ttype,sstart,send,tstart,tend,price "
		       +"FROM train "
		       +"WHERE ttype=#{ttype} "
		       +"AND sstart=#{sstart} "
		       +"AND send=#{send} "
		       +"AND TO_DATE(CASE WHEN tstart = '24:00' THEN '00:00' ELSE tstart END, 'HH24:MI') >= TO_DATE(#{tstart}, 'HH24:MI') "
		       +"ORDER BY tno ASC)) "
		       +"WHERE num BETWEEN #{start} AND #{end}")
		public List<TrainVO> trainFindData(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10.0) "
		       +"FROM train "
		       +"WHERE ttype=#{ttype} "
		       +"AND sstart=#{sstart} "
		       +"AND send=#{send} "
		       +"AND TO_DATE(CASE WHEN tstart = '24:00' THEN '00:00' ELSE tstart END, 'HH24:MI') >= TO_DATE(#{tstart}, 'HH24:MI')")
		public int trainFindTotalPage(Map map);
	
	@Insert("insert into train_reserve (rno,tno,id,ttype,tday,sstart,send,tstart,tend,tinwon,tseat,totalprice) "
			+"values(tr_rno_seq.nextval,#{tno},#{id},#{ttype},#{tday},#{sstart},#{send},#{tstart},#{tend},#{tinwon}"
			+ "		, #{tseat},#{totalprice})")
	public void train_reserve(TrainReserveVO vo);
			
	@Select("SELECT rno,tno,ttype,tday,sstart,send,tstart,tend,tinwon,tseat,totalprice "
			+ " FROM train_reserve "
			+ " WHERE id=#{id}")
	public List<TrainReserveVO> reserveMyPageListData(String id);
	
	@Select("SELECT rno,tno,ttype,tday,sstart,send,tstart,tend,tinwon,tseat,totalprice "
			+ " FROM train_reserve ")
	public List<TrainReserveVO> trainReserveAdminListData();
}
