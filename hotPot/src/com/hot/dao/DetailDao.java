package com.hot.dao;

import java.util.List;

import com.hot.model.Detail;

public interface DetailDao {
	public int addDetail(Detail detail);
	public List<Detail> getDetailByOid(int oid);
}
