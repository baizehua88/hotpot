package com.hot.service;

import java.util.List;

import com.hot.model.Staff;

public interface StaffService {
	public Staff login(Staff staff);

	public List<Staff> getStaff();

	public int addStaff(Staff staff);

	public boolean delStaff(int id);

	public List<Staff> getPayStaff();

	public int payroll(int salary);
}
