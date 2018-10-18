package com.hot.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
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
<<<<<<< HEAD
		} else {

=======
		}else {
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
			mv.setViewName("redirect:/jsp/login.jsp");
		}
		return mv;
	}

	@RequestMapping("/staffList.do")
	public ModelAndView staffList() {
		ModelAndView mv = new ModelAndView();
		List<Staff> staffList = staffService.getStaff();
<<<<<<< HEAD
		// System.out.println(staffList);
=======
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
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
		mv.addObject("payStaffList", payStaffList);
		// System.out.println(payStaffList);
		mv.setViewName("payroll");
		return mv;
	}

	@RequestMapping("/payroll.do")
	@ResponseBody
	public String payroll(HttpServletRequest request) {

		List<Staff> staffs = jsonMap(request);
		int row = 0;
		for (int i = 0; i < staffs.size(); i++) {
			Staff staff = new Staff();
			staff = staffs.get(i);
			row = staffService.payroll(staff);
			row++;
		}
		if (row > 0) {
			return "OK";
		} else {
			return "FALL";
		}
	}

	public List<Staff> jsonMap(HttpServletRequest request) {
		String ds = request.getParameter("ds");
		JsonParser parser = new JsonParser();
		JsonArray jsonArray = parser.parse(ds).getAsJsonArray();
		Gson gson = new Gson();
		List<Staff> staffs = new ArrayList<Staff>();
		for (JsonElement staff : jsonArray) {
			Staff recipeBean = gson.fromJson(staff, Staff.class);
			staffs.add(recipeBean);
		}
		return staffs;
	}

	/**
	 * 根据id查询员工数据
	 * 
	 * @param staff
	 * @return
	 */
	@RequestMapping("/getEmployeesById.do")
	@ResponseBody
	public Staff getEmployeesById(Staff staff) {
		// System.out.println(staff.getSid());
		Staff employeesById = staffService.getEmployeesById(staff);
		// System.out.println(employeesById);
		return employeesById;
	}

	/**
	 * 编辑员工资料
	 * 
	 * @param staff
	 * @return
	 */
	@RequestMapping("/updateEmployees.do")
	public ModelAndView updateEmployees(Staff staff) {
		ModelAndView mv = new ModelAndView();
		// System.out.println(staff);
		if (staffService.updateEmployees(staff) > 0) {
			System.out.println("修改成功");
			mv.setViewName("redirect:/staff/staffList.do");
		} else {
			System.out.println("修改失败");
			mv.setViewName("redirect:/staff/staffList.do");
		}
		return mv;
	}

	/**
	 * 查询
	 * 
	 * @param staff
	 * @return
	 */
	@RequestMapping("/search.do")
	public ModelAndView search(Staff staff) {

		ModelAndView mView = new ModelAndView();
		// System.out.println(staff.getSname() + staff.getSposition());
		if (staff.getSname() != null && staff.getSname() != "") {
			if (staff.getSposition() != null && staff.getSposition() != "") {
				List<Staff> staffList = staffService.searchByNameandPosition(staff);
				mView.addObject("staffList", staffList);
				mView.setViewName("employees");
			} else {
				List<Staff> staffList = staffService.searchByName(staff.getSname());
				mView.addObject("staffList", staffList);
				mView.setViewName("employees");
			}
		} else {
			if (staff.getSposition() != null && staff.getSposition() != "") {
				List<Staff> staffList = staffService.searchByPosition(staff.getSposition());
				mView.addObject("staffList", staffList);
				mView.setViewName("employees");
			} else {
				mView.setViewName("redirect:/staff/staffList.do");
			}
		}

		return mView;
	}

}
