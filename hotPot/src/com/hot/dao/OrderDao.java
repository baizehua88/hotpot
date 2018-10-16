package com.hot.dao;

import java.util.List;

import com.hot.model.Order;

public interface OrderDao {
	public int addOrder(Order order);
	public List<Order> getOrders();
	public Order getOrderId(Order order);
	public Order getDetailOid(Order order);
}