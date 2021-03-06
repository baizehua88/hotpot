package com.hot.service;

import java.util.List;

import com.hot.model.Desk;
import com.hot.model.Order;

public interface OrderService {
	
	public int addOrder(Order order);
	public List<Order> getOrders();
	public Order getOrderId(Order order);
	public Order getDetailOid(Order order);
	
	public List<Order> getOrder();
	
	public int zhiFu(Order order);
	
	public Order getOne(Integer oid);
	
	public int upDesk(Desk desk);
	
	public Order selOrder(Order order);
	
	public List<Order> pageOrder(Order order);
}
