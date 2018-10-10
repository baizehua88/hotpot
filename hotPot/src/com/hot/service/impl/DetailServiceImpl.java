package com.hot.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hot.dao.DetailDao;
import com.hot.model.Detail;
import com.hot.service.DetailService;
@Service("detailService")
public class DetailServiceImpl implements DetailService {
	
	@Autowired
	@Qualifier("detailDao")
	private DetailDao detailDao;
	@Override
	public int addDetail(Detail detail) {
		// TODO Auto-generated method stub
		return detailDao.addDetail(detail);
	}

}
