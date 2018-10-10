package com.hot.service.impl;

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

}
