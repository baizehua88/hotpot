package com.hot.service;

import java.util.List;

import com.hot.model.Detail;

public interface DetailService {
	public int addDetail(Detail detail);
	public List<Detail> getDetailByOid(int oid);
}
