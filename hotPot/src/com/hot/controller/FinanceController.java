package com.hot.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Finance;
import com.hot.service.FinanceService;

@Controller
@RequestMapping("/finance")
public class FinanceController {
	@Autowired
	@Qualifier("financeService")
	private FinanceService financeService;
	
	//日结算
	@RequestMapping("/financeList.do")
	public ModelAndView getFinances(){
		ModelAndView mv = new ModelAndView();
		Finance finance = new Finance();
		finance.setFtime(getTime());
		System.out.println(getTime());
		List<Finance> financeList = financeService.getFinances(finance);
		System.out.println(financeList);
		mv.addObject("financeList", financeList);
		mv.setViewName("day");
		return mv;
	}
	
	public String getTime() {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式 yyyy/MM/dd HH:mm:ss
		String time = dateFormat.format( now ); 
		return time;
	}
	
	//总结算
	@RequestMapping("/sumFinanceList.do")
	public ModelAndView getSumFinances(){
		ModelAndView mv = new ModelAndView();
		List<Finance> ftimeList = financeService.getFtime();
		List<Finance> sumFinanceList = new ArrayList<>();
		double sumFexpend=0;
		double sumFincome=0;
		double sumFprofit=0;
		double sumFbalance=0;
		for (int i = 0; i < ftimeList.size(); i++) {
			Finance finance = new Finance();
			System.out.println("遍历时间："+ftimeList.get(i).getFtime());
            finance.setFtime(ftimeList.get(i).getFtime());
            
            //总计
            sumFinanceList.add(financeService.getSumFinances(finance));
            sumFexpend += financeService.getSumFinances(finance).getFexpend();
            sumFincome += financeService.getSumFinances(finance).getFincome();
            sumFprofit += financeService.getSumFinances(finance).getFprofit();
            sumFbalance += financeService.getSumFinances(finance).getFbalance();
            
		}
		System.out.println(sumFinanceList);
		mv.addObject("sumFexpend",sumFexpend );
		mv.addObject("sumFincome",sumFincome );
		mv.addObject("sumFprofit",sumFprofit );
		mv.addObject("sumFbalance",sumFbalance );
		mv.addObject("sumFinanceList", sumFinanceList);
		mv.setViewName("sum");
		return mv;
	}
	
}
