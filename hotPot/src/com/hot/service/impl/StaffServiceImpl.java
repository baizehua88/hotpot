package com.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hot.dao.StaffDao;
import com.hot.model.Staff;
import com.hot.service.StaffService;

@Service("staffService")
public class StaffServiceImpl implements StaffService {

	@Autowired
	@Qualifier("staffDao")
	private StaffDao staffDao;

	@Override
	public Staff login(Staff staff) {
		return staffDao.login(staff);
	}

	@Override
	public List<Staff> getStaff() {
		// TODO Auto-generated method stub
		return staffDao.getStaff();
	}

	@Override
	public int addStaff(Staff staff) {
		// TODO Auto-generated method stub
		return staffDao.addStaff(staff);
	}

	@Override
	public boolean delStaff(int id) {
		// TODO Auto-generated method stub
		if (staffDao.delStaff(id) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Staff> getPayStaff() {
		// TODO Auto-generated method stub
		return staffDao.getPayStaff();
	}

	@Override
	public int payroll(int salary) {
		// TODO Auto-generated method stub
		return staffDao.payroll(salary);
	}

}
