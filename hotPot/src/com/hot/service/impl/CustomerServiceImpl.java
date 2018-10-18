package com.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hot.dao.CustomerDao;
import com.hot.model.Customer;
import com.hot.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	@Qualifier("customerDao")
	private CustomerDao customerDao;

	@Override
	public List<Customer> getCustomers() {
		// TODO Auto-generated method stub
		return customerDao.getCustomers();
	}

	@Override
	public int addMember(Customer customer) {
		// TODO Auto-generated method stub
		return customerDao.addMember(customer);
	}

	@Override
	public Customer getMemberById(Customer customer) {
		// TODO Auto-generated method stub
		return customerDao.getMemberById(customer);
	}

	@Override
	public int updateMember(Customer customer) {
		// TODO Auto-generated method stub
		return customerDao.updateMember(customer);
	}

	@Override
<<<<<<< HEAD
	public boolean delMember(int id) {
		// TODO Auto-generated method stub
		if (customerDao.delMember(id) > 0) {
			return true;
		}
		return false;
=======
	public Customer getCintegral(Customer customer) {
		// TODO Auto-generated method stub
		return customerDao.getCintegral(customer);
	}

	@Override
	public int addCintegral(Customer customer) {
		// TODO Auto-generated method stub
		return customerDao.addCintegral(customer);
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
	}

}
