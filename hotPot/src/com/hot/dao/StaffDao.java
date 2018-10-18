package com.hot.dao;

import java.util.List;

import com.hot.model.Staff;

public interface StaffDao {
	public Staff login(Staff staff);

	public List<Staff> getStaff();

	public int addStaff(Staff staff);

	public int delStaff(int id);

	public List<Staff> getPayStaff();

	public int payroll(Staff staff);

	public Staff getEmployeesById(Staff staff);

	public int updateEmployees(Staff staff);

	public List<Staff> searchByName(String sname);

	public List<Staff> searchByPosition(String sposition);

	public List<Staff> searchByNameandPosition(Staff staff);
	
	public List<Staff> pageStaff(Staff staff);
}
