package com.hot.service;

import java.util.List;

import com.hot.model.Customer;

public interface CustomerService {
	public List<Customer> getCustomers();

	public int addMember(Customer customer);

	public Customer getMemberById(Customer customer);

	public int updateMember(Customer customer);

	public boolean delMember(int id);
}
