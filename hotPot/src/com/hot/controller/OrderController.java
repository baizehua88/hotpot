package com.hot.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Detail;
import com.hot.model.Order;
import com.hot.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@RequestMapping("/addOrder.do")
	public ModelAndView addOrder(Order order,Detail[] detail){
		ModelAndView mv = new ModelAndView();
		//order.setDid(Integer.parseInt(request.getParameter("did")));
		System.out.println(order.getDid());
		order.setOtime(getTime());
		order.setOstate("未支付");
		orderService.addOrder(order);
		mv.setViewName("redirect:/desk/deskList.do");
		return mv;
		
	}
	
	public String getTime() {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式 yyyy/MM/dd HH:mm:ss
		String time = dateFormat.format( now ); 
		return time;
	}
}
