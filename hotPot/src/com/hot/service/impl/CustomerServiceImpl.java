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
	public boolean delMember(int id) {
		// TODO Auto-generated method stub
		if (customerDao.delMember(id) > 0) {
			return true;
		}
		return false;
	}

}
