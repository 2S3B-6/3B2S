package com.sist.dao;
import java.util.*;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.vo.*;
import com.sist.mapper.*;

@Repository
public class TrainDAO {
    @Autowired
    private TrainMapper mapper;

    public List<TrainVO> trainFindData(Map map)
    {
    	return mapper.trainFindData(map);
    }
    public int trainFindTotalPage(Map map)
    {
    	return mapper.trainFindTotalPage(map);
    }
    public void train_reserve(TrainReserveVO vo) {
    	mapper.train_reserve(vo);
    }
	public List<TrainReserveVO> reserveMyPageListData(String id){
		return mapper.reserveMyPageListData(id);
	}
}
