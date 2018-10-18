package com.hot.dao;

import java.util.List;

import com.hot.model.Customer;

public interface CustomerDao {
	public List<Customer> getCustomers();
	public int addMember(Customer customer);
	public Customer getMemberById(Customer customer);
	public int updateMember(Customer customer);
	public Customer getCintegral(Customer customer);
	public int addCintegral(Customer customer);
}
