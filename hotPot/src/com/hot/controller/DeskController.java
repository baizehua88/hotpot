package com.hot.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Desk;
import com.hot.service.DeskService;

@Controller
@RequestMapping("/desk")
public class DeskController {
	@Autowired
	@Qualifier("deskService")
	private DeskService deskService;
	
	@RequestMapping("/deskList.do")
	public ModelAndView deskList(){
		ModelAndView mv = new ModelAndView();
		List<Desk> deskList = deskService.getDesks();
		mv.addObject("deskList",deskList);
		mv.setViewName("frontService");
		return mv;
		
	}
	
}
