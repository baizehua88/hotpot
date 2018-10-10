package com.hot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Detail;
import com.hot.model.Order;

@Controller
@RequestMapping("/detail")
public class DetailController {
	@Autowired
	@Qualifier("detailService")
	private com.hot.service.DetailService detailService;
	
	public ModelAndView addDetail(Detail detail){
		ModelAndView mv = new ModelAndView();
		
		return null;				
	}
}
