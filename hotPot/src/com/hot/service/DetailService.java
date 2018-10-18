package com.hot.service;

import java.util.List;

import com.hot.model.Detail;
import com.hot.model.Recipe;

public interface DetailService {
	public int addDetail(Detail detail);
	
	public List<Detail> getDetailByOid(int oid);
	
	public List<Detail> getTotal();
	
	public int reduceStock(Recipe recipe);
}
