package com.hot.controller;

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
	public ModelAndView login(Staff staff,HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		Staff staff2 = staffService.login(staff);
		if (staff2 != null) {
			mv.setViewName("index");
			session.setAttribute("staff", staff2);
			session.setMaxInactiveInterval(-1);
		}else {
			
			mv.setViewName("redirect:/jsp/login.jsp");
		}
		return mv;
	}
}
