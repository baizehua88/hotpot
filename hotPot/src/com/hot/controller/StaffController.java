package com.hot.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Staff;
import com.hot.service.StaffService;

@Controller
@RequestMapping("/staff")
public class StaffController {

	@Autowired
	@Qualifier("staffService")
	private StaffService staffService;

	@RequestMapping("/login.do")
	public ModelAndView login(Staff staff, HttpSession session) {

		ModelAndView mv = new ModelAndView();
		Staff staff2 = staffService.login(staff);
		if (staff2 != null) {
			mv.setViewName("index");
			session.setAttribute("staff", staff2);
			session.setMaxInactiveInterval(-1);
		} else {

			mv.setViewName("redirect:/jsp/login.jsp");
		}
		return mv;
	}

	@RequestMapping("/staffList.do")
	public ModelAndView staffList() {
		ModelAndView mv = new ModelAndView();
		List<Staff> staffList = staffService.getStaff();
		// System.out.println(staffList);
		mv.addObject("staffList", staffList);
		mv.setViewName("employees");
		return mv;
	}

	/**
	 * 添加员工
	 * 
	 * @param staff
	 * @return
	 */
	@RequestMapping("/addStaff.do")
	public ModelAndView addStaff(Staff staff) {
		ModelAndView mView = new ModelAndView();

		if (staffService.addStaff(staff) > 0) {
			mView.setViewName("redirect:/staff/staffList.do");
		}
		return mView;
	}

	/**
	 * 删除员工
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/delStaff.do")
	public ModelAndView delStaff(int id) {
		ModelAndView mView = new ModelAndView();

		if (staffService.delStaff(id)) {
			mView.setViewName("redirect:/staff/staffList.do");
		}
		return mView;
	}

	@RequestMapping("/payStaffList.do")
	public ModelAndView payStaffList() {
		ModelAndView mv = new ModelAndView();
		List<Staff> payStaffList = staffService.getPayStaff();
		// System.out.println(staffList);
		mv.addObject("payStaffList", payStaffList);
		mv.setViewName("payroll");
		return mv;
	}

	@RequestMapping("/payroll.do")
	public ModelAndView payroll(int salary) {
		ModelAndView mView = new ModelAndView();

		if (staffService.payroll(salary) > 0) {
			mView.setViewName("redirect:/staff/staffList.do");
		}
		return mView;
	}
}
