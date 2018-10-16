package com.hot.service;

import java.util.List;

import com.hot.model.Desk;

public interface DeskService {

	public List<Desk> getDesks();
	public int updateDeskState(int did);

}
