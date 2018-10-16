package com.hot.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Detail;
import com.hot.model.Order;
import com.hot.service.DeskService;
import com.hot.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@Autowired
	@Qualifier("deskService")
	private DeskService deskService;
	
	@RequestMapping("/addOrder.do")
	@ResponseBody
	public int addOrder(Order order){
		//ModelAndView mv = new ModelAndView();
		//order.setDid(Integer.parseInt(request.getParameter("did")));
		System.out.println(order.getDid());
		order.setOtime(getTime());
		order.setOstate("未支付");
		orderService.addOrder(order);
		//得到产生的订单id------------------------------------
		Order order1 =  orderService.getOrderId(order);
		//修改餐桌状态
		deskService.updateDeskState(order.getDid());
		System.out.println(order1.getOid());		
		//再返回产生的订单id------------------------------------
		return order1.getOid();
		
	}
	
	public String getTime() {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式 yyyy/MM/dd HH:mm:ss
		String time = dateFormat.format( now ); 
		return time;
	}
	
	@RequestMapping("/orderList.do")
	public ModelAndView orderList(){
		ModelAndView mv =  new ModelAndView();
		List<Order> orderList = orderService.getOrders();
		System.out.println(orderList);
		mv.addObject("orderList", orderList);
		mv.setViewName("orderList");
		return mv;
		
	}
	
	@RequestMapping("getDetailOid.do")
	@ResponseBody
	public int getDetailOid(Order order){
		order.setOstate("未支付");
		Order order2 = orderService.getDetailOid(order);
		return order2.getOid();		
	}
	
}
