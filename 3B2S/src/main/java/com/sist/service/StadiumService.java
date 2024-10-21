package com.sist.service;
import java.util.*;
import com.sist.vo.*;
public interface StadiumService {
	public List<StadiumVO> stadiumListData();
	public StadiumVO stadiumDetailData(int no);
	public List<HotelVO> stadiumHotelListData(String hd);
	//public StadiumVO stadiumHotelDetailData(int hno);
	public List<FoodVO> stadiumFoodListData(String fd);
}
