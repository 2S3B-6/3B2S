package com.sist.service;
import java.util.*;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;
public interface TrainService {
//	public List<TrainVO> trainListData(int start,int end);    
//    public int trainTotalPage();
    public List<TrainVO> trainFindData(Map map);
    public int trainFindTotalPage(Map map);
    public void train_reserve(TrainReserveVO vo);
	public List<TrainReserveVO> reserveMyPageListData(String id);
}
