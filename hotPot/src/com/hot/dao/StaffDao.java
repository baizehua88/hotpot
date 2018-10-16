package com.hot.dao;

import java.util.List;

import com.hot.model.Staff;

public interface StaffDao {
	public Staff login(Staff staff);

	public List<Staff> getStaff();

	public int addStaff(Staff staff);

	public int delStaff(int id);

	public List<Staff> getPayStaff();

	public int payroll(int salary);
}
