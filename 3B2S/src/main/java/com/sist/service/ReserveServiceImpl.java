package com.sist.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sist.dao.ReserveDAO;
import com.sist.vo.GameReserveVO;
import com.sist.vo.GameVO;
import com.sist.vo.HotelVO;
import com.sist.vo.JjimVO;
import com.sist.vo.ReserveVO;

@Service
public class ReserveServiceImpl implements ReserveService{
	@Autowired
	private ReserveDAO rDao;


	@Override
	public void reserveInsert(ReserveVO vo) {
		// TODO Auto-generated method stub
		rDao.reserveInsert(vo);
	}

	@Override
	public List<ReserveVO> reserveMyPageListData(String id) {
		// TODO Auto-generated method stub
		return rDao.reserveMyPageListData(id);
	}

	@Override
	public List<ReserveVO> reserveAdminListData() {
		// TODO Auto-generated method stub
		return rDao.reserveAdminListData();
	}

	@Override
	public void reserveOk(int rno) {
		// TODO Auto-generated method stub
		rDao.reserveOk(rno);
	}

	@Override
	public ReserveVO reserveInfoData(int rno) {
		// TODO Auto-generated method stub
		return rDao.reserveInfoData(rno);
	}

	@Override
	public List<GameReserveVO> gameNoSeatList(Map map) {
		// TODO Auto-generated method stub
		return rDao.gameNoSeatList(map);
	}

	@Override
	public int getTno(Map map) {
		// TODO Auto-generated method stub
		return rDao.getTno(map);
	}

	@Override
	public void gamereserveInsert(GameReserveVO vo) {
		// TODO Auto-generated method stub
		rDao.gamereserveInsert(vo);
	}

	@Override
	public List<GameReserveVO> MyPageGameListData(String id) {
		// TODO Auto-generated method stub
		return rDao.MyPageGameListData(id);
	}

	@Override 
	public List<JjimVO> MyPageJjimListData(String id) {
		// TODO Auto-generated method stub
		return rDao.MyPageJjimListData(id);
	}

	@Override
	public List<GameReserveVO> adminGameListData() {
		// TODO Auto-generated method stub
		return rDao.adminGameListData();
	}
	
	
}
