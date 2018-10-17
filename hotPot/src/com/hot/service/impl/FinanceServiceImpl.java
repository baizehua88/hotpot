package com.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hot.dao.FinanceDao;
import com.hot.model.Finance;
import com.hot.service.FinanceService;

@Service("financeService")
public class FinanceServiceImpl implements FinanceService{
	
	@Autowired
	@Qualifier("financeDao")
	private FinanceDao financeDao;
	
	@Override
	public int addFinance(Finance finance) {
		// TODO Auto-generated method stub
		return financeDao.addFinance(finance);
	}

	@Override
	public List<Finance> getFinances(Finance finance) {
		// TODO Auto-generated method stub
		return financeDao.getFinances(finance);
	}

	@Override
	public Finance getSumFinances(Finance finance) {
		// TODO Auto-generated method stub
		return financeDao.getSumFinances(finance);
	}

	@Override
	public List<Finance> getFtime() {
		// TODO Auto-generated method stub
		return financeDao.getFtime();
	}
	
}
