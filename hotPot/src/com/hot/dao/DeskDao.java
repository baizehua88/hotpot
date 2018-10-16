package com.hot.dao;

import java.util.List;

import com.hot.model.Desk;

public interface DeskDao {

	public List<Desk> getDesks();
	public int updateDeskState(int did);

}
