package com.hot.dao;

import java.util.List;

import com.hot.model.Desk;
import com.hot.model.Order;

public interface OrderDao {
	
	public int addOrder(Order order);
	public List<Order> getOrders();
	public Order getOrderId(Order order);
	public Order getDetailOid(Order order);
	
	public List<Order> getOrder();
	
	public int zhiFu(Order order);
	
<<<<<<< HEAD
	public Order getOne(Integer oid);
=======
	public Order getOne(Integer oid);
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
	
	public int upDesk(Desk desk);
	
	public Order selOrder(Order order);
}