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

import com.hot.model.Customer;
import com.hot.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	@Qualifier("customerService")
	private CustomerService customerService;
	
	//会员列表
	@RequestMapping("/customerList.do")
	public ModelAndView customerList(){
		ModelAndView mv = new ModelAndView();
		List<Customer> customerList = customerService.getCustomers();
		mv.addObject("customerList", customerList);
		mv.setViewName("members");
		return mv;
				
	}
	
	//添加会员
	@RequestMapping("/addMember.do")
	public ModelAndView addMember(Customer customer){
		ModelAndView mv = new ModelAndView();
		customer.setCjoin(getTime());
		customerService.addMember(customer);
		mv.setViewName("redirect:/customer/customerList.do");
		return mv;
		
	}
	
	public String getTime() {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式 yyyy/MM/dd HH:mm:ss
		String time = dateFormat.format( now ); 
		return time;
	}
	
	//根据id查询会员
	@RequestMapping("/getMemberById.do")
	@ResponseBody
	public Customer getMemberById(Customer customer){
		System.out.println(customer.getCid());
		Customer memberById = customerService.getMemberById(customer);
		return memberById;
	}
	
	//修改会员资料
	@RequestMapping("/updateMember.do")
	public ModelAndView updateMember(Customer customer){
		ModelAndView mv = new ModelAndView();
		if (customerService.updateMember(customer)>0) {
			mv.setViewName("redirect:/customer/customerList.do");
		}else {
			mv.setViewName("redirect:/customer/customerList.do");
		}
		return mv;
	}
	
}
