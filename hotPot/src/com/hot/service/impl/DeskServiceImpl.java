package com.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hot.dao.DeskDao;
import com.hot.model.Desk;
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
}
