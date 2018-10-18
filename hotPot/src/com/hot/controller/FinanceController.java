package com.hot.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Finance;
import com.hot.model.ListFinance;
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
		List<Finance> financeList = financeService.getFinances(finance);
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
		for (int i = 0; i < ftimeList.size(); i++) {
			Finance finance = new Finance();
            finance.setFtime(ftimeList.get(i).getFtime());
            sumFinanceList.add(financeService.getSumFinances(finance));
		}
		mv.addObject("sumFinanceList", sumFinanceList);
		mv.setViewName("sum");
		return mv;
	}
	
	
	/**
	 * echarts图标数据
	 * @return
	 */
	@RequestMapping("/echarts.do")
	@ResponseBody
	public ListFinance getSumFinances1(){
		List<String> tList = new ArrayList<String>();
		List<Integer> iList = new ArrayList<Integer>();
		List<Integer> eList = new ArrayList<Integer>();
		List<Finance> ftimeList = financeService.getFtime();
		List<Finance> sumFinanceList = new ArrayList<>();
		ListFinance listFinance = new ListFinance();
		for (int i = 0; i < ftimeList.size(); i++) {
			Finance finance = new Finance();
            finance.setFtime(ftimeList.get(i).getFtime());
            sumFinanceList.add(financeService.getSumFinances(finance));
		}
		for(int j = sumFinanceList.size()-5;j <sumFinanceList.size();j++) {
			tList.add(sumFinanceList.get(j).getFtime());
			iList.add(sumFinanceList.get(j).getFincome());
			eList.add(sumFinanceList.get(j).getFexpend());
		}
		listFinance.settList(tList);
		listFinance.setiList(iList);
		listFinance.seteList(eList);
		return listFinance;
	}
	
}
