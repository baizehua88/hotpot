package com.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hot.dao.DetailDao;
import com.hot.model.Detail;
import com.hot.model.Recipe;
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
	@Override
	public List<Detail> getDetailByOid(int oid) {
		// TODO Auto-generated method stub
		return detailDao.getDetailByOid(oid);
	}
<<<<<<< HEAD
=======
	@Override
	public List<Detail> getTotal() {
		// TODO Auto-generated method stub
		return detailDao.getTotal();
	}
	@Override
	public int reduceStock(Recipe recipe) {
		// TODO Auto-generated method stub
		return detailDao.reduceStock(recipe);
	}
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git

}
