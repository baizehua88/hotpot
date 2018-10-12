package com.hot.service;

import java.util.List;

import com.hot.model.Order;

public interface OrderService {
	
	public int addOrder(Order order);
	
	public List<Order> getOrder();
	
	public int zhiFu(Order order);
	
	public Order getOne(Integer oid);
}
