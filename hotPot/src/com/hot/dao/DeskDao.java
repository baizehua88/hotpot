package com.hot.dao;

import java.util.List;

import com.hot.model.Desk;
import com.hot.model.Staff;

public interface DeskDao {

	public List<Desk> getDesks();
	public int updateDeskState(int did);

	public int updateDeskState(int did);

	public List<Staff> searchByDcountandDstate(Desk desk);

	public List<Staff> searchByDcount(Integer dcount);

	public List<Staff> searchByDstate(String dstate);

	public int addFrontService(Desk desk);

	public int delFrontService(Integer did);

}
