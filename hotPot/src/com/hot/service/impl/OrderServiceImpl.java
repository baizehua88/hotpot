package com.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hot.dao.OrderDao;
import com.hot.model.Order;
import com.hot.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	@Qualifier("orderDao")
	private OrderDao orderDao;
	@Override
	public int addOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDao.addOrder(order);
	}
	@Override
	public List<Order> getOrders() {
		// TODO Auto-generated method stub
		return orderDao.getOrders();
	}
	@Override
	public Order getOrderId(Order order) {
		// TODO Auto-generated method stub
		return orderDao.getOrderId(order);
	}
	@Override
	public Order getDetailOid(Order order) {
		// TODO Auto-generated method stub
		return orderDao.getDetailOid(order);
	}
	public List<Order> getOrder() {
		return orderDao.getOrder();
	}
	@Override
	public int zhiFu(Order order) {
		return orderDao.zhiFu(order);
	}
	@Override
	public Order getOne(Integer oid) {
		// TODO Auto-generated method stub
		return orderDao.getOne(oid);
	}

}
