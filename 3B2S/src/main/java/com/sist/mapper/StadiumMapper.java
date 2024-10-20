package com.sist.mapper;

import java.util.*;
import com.sist.vo.*;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface StadiumMapper {
	  @Select("SELECT no,name,poster,location,hometeam "
			 +"FROM stadium ORDER BY no ASC")
	  public List<StadiumVO> stadiumListData();

	  @Select("SELECT * FROM stadium "
			  +"WHERE no=#{no}")
	  public StadiumVO stadiumDetailData(int no);
}
