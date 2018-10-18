package com.hot.dao;

import java.util.List;

import com.hot.model.Finance;

public interface FinanceDao {
	public int addFinance(Finance finance);
	
	public List<Finance> getFinances(Finance finance);
	
	public List<Finance> pageFtime(Finance finance);
	
	public Finance getSumFinances(Finance finance);	
	
	public List<Finance> getFtime();
	
	public List<Finance> pageFinance(Finance finance);
}
