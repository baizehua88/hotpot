package com.hot.dao;

import java.util.List;

import com.hot.model.Customer;

public interface CustomerDao {
	public List<Customer> getCustomers();
	public int addMember(Customer customer);
	
}
