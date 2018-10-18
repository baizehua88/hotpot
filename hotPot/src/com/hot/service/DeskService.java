package com.hot.service;

import java.util.List;

import com.hot.model.Desk;
import com.hot.model.Staff;

public interface DeskService {

	public List<Desk> getDesks();

	public int updateDeskState(int did);

	public List<Staff> searchByDcountandDstate(Desk desk);

	public List<Staff> searchByDcount(Integer dcount);

	public List<Staff> searchByDstate(String dstate);

	public boolean addFrontService(Desk desk);

	public boolean delFrontService(Integer did);

}
