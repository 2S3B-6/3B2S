package com.sist.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;
@Service
public class TrainServiceImpl implements TrainService{
     @Autowired
     private TrainDAO tDao;

//	@Override
//	public List<TrainVO> trainListData(int start, int end) {
//		// TODO Auto-generated method stub
//		return tDao.trainListData(start, end);
//	}
//
//	@Override
//	public int trainTotalPage() {
//		// TODO Auto-generated method stub
//		return tDao.trainTotalPage();
//	}

	@Override
	public List<TrainVO> trainFindData(Map map) {
		// TODO Auto-generated method stub
		return tDao.trainFindData(map);
	}

	@Override
	public int trainFindTotalPage(Map map) {
		// TODO Auto-generated method stub
		return tDao.trainFindTotalPage(map);
	}

	@Override
	public void train_reserve(TrainReserveVO vo) {
		// TODO Auto-generated method stub
		tDao.train_reserve(vo);
	}

	@Override
	public List<TrainReserveVO> reserveMyPageListData(String id) {
		// TODO Auto-generated method stub
		return tDao.reserveMyPageListData(id);
	}
     
     
}
