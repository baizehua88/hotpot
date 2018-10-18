package com.hot.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Customer;
import com.hot.model.Recipe;
import com.hot.service.CustomerService;
import com.hot.utils.DingZhi;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	@Qualifier("customerService")
	private CustomerService customerService;

	// 会员列表
	@RequestMapping("/customerList.do")
	public ModelAndView customerList(Customer customer) {
		
		ModelAndView mv = new ModelAndView();
		List<Customer> customerList = customerService.getCustomers();
		
		// 分页显示
		int page = 1;
		int start = 0;
		if (customer.getPage() != null) {
			page = customer.getPage();
		}
		// 数据总条数
		int total = customerList.size();
		// 总页数
		int totalPage = total / DingZhi.hang;
		Vector<Integer> pageArr = new Vector<Integer>();
		if (total % DingZhi.hang != 0) {
			totalPage += 1;
		}
		if (page >= DingZhi.page) {
			start = page / DingZhi.page * DingZhi.hang;
		}
		int num = start + 1;
		// 页数列表
		while (!(num > totalPage || num > start + DingZhi.page)) {
			pageArr.add(new Integer(num));
			++num;
		}
		start = (page - 1) * DingZhi.hang;
		customer.setStart(start);
		customer.setRows(DingZhi.hang);
		
		List<Customer> customers = new ArrayList<Customer>();
		customers = customerService.pageMember(customer);
		mv.addObject("customers", customers);
		mv.addObject("pagelist", pageArr);
		mv.addObject("page", page);
		mv.addObject("totalpage", totalPage);
		mv.setViewName("members");
		return mv;

	}

	// 添加会员
	@RequestMapping("/addMember.do")
	public ModelAndView addMember(Customer customer) {
		ModelAndView mv = new ModelAndView();
		customer.setCjoin(getTime());
		customerService.addMember(customer);
		mv.setViewName("redirect:/customer/customerList.do");
		return mv;

	}

	public String getTime() {
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");// 可以方便地修改日期格式 yyyy/MM/dd HH:mm:ss
		String time = dateFormat.format(now);
		return time;
	}

	// 根据id查询会员
	@RequestMapping("/getMemberById.do")
	@ResponseBody
	public Customer getMemberById(Customer customer) {
		System.out.println(customer.getCid());
		Customer memberById = customerService.getMemberById(customer);
		System.out.println(memberById);
		return memberById;
	}

	// 修改会员资料
	@RequestMapping("/updateMember.do")
	public ModelAndView updateMember(Customer customer) {
		ModelAndView mv = new ModelAndView();
		System.out.println(customer);
		if (customerService.updateMember(customer) > 0) {
			System.out.println("修改成功");
			mv.setViewName("redirect:/customer/customerList.do");
		} else {
			System.out.println("修改失败");
			mv.setViewName("redirect:/customer/customerList.do");
		}
		return mv;
	}

	/**
	 * 删除会员信息
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/delMember.do")
	public ModelAndView delMember(int id) {

		ModelAndView mView = new ModelAndView();

		if (customerService.delMember(id)) {
			mView.setViewName("redirect:/customer/customerList.do");
		}
		return mView;
	}

	// 输入手机号查询积分-----------没用到-------------------
	@RequestMapping("/getCintegral.do")
	@ResponseBody
	public int getCintegral(Customer customer, HttpSession session) {
		customerService.getCintegral(customer);
		session.setAttribute("cphone", customer.getCphone());
		int cintegral = customerService.getCintegral(customer).getCintegral();
		System.out.println("手机号：" + customer.getCphone() + "，积分：" + cintegral);
		return cintegral;

	}
}
