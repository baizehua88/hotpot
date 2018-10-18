package com.hot.service;

import java.util.List;

import com.hot.model.Finance;

public interface FinanceService {
	public int addFinance(Finance finance);
	public List<Finance> getFinances(Finance finance);
	public Finance getSumFinances(Finance finance);
	public List<Finance> getFtime();
}
