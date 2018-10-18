package com.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hot.dao.DeskDao;
import com.hot.model.Desk;
import com.hot.model.Staff;
import com.hot.service.DeskService;

@Service("deskService")
public class DeskServiceImpl implements DeskService {
	@Autowired
	@Qualifier("deskDao")
	private DeskDao deskDao;

	@Override
	public List<Desk> getDesks() {
		// TODO Auto-generated method stub
		return deskDao.getDesks();
	}

	@Override
	public int updateDeskState(int did) {
		// TODO Auto-generated method stub
		return deskDao.updateDeskState(did);
	}

	@Override
	public List<Staff> searchByDcountandDstate(Desk desk) {
		// TODO Auto-generated method stub
		return deskDao.searchByDcountandDstate(desk);
	}

	@Override
	public List<Staff> searchByDcount(Integer dcount) {
		// TODO Auto-generated method stub
		return deskDao.searchByDcount(dcount);
	}

	@Override
	public List<Staff> searchByDstate(String dstate) {
		// TODO Auto-generated method stub
		return deskDao.searchByDstate(dstate);
	}

	@Override
	public boolean addFrontService(Desk desk) {
		// TODO Auto-generated method stub
		if (deskDao.addFrontService(desk) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean delFrontService(Integer did) {
		// TODO Auto-generated method stub
		if (deskDao.delFrontService(did) > 0) {
			return true;
		}
		return false;
	}

}
