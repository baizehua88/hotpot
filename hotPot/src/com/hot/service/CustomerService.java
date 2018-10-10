package com.hot.service;

import java.util.List;

import com.hot.model.Customer;
import com.hot.model.Recipe;

public interface CustomerService {
	public List<Customer> getCustomers();
	public int addMember(Customer customer);
}
