package com.hot.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hot.model.Finance;
import com.hot.model.ListFinance;
import com.hot.service.FinanceService;
import com.hot.utils.DingZhi;

@Controller
@RequestMapping("/finance")
public class FinanceController {
	@Autowired
	@Qualifier("financeService")
	private FinanceService financeService;
	
	//日结算
	@RequestMapping("/financeList.do")
	public ModelAndView getFinances(Finance finance){
		ModelAndView mv = new ModelAndView();
		finance.setFtime(getTime());
		List<Finance> financeList = financeService.getFinances(finance);
		
		// 分页显示
		int page = 1;
		int start = 0;
		if (finance.getPage() != null) {
			page = finance.getPage();
		}
		// 数据总条数
		int total = financeList.size();
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
		finance.setStart(start);
		finance.setRows(DingZhi.hang);
		List<Finance> finances = new ArrayList<Finance>();
		finances = financeService.pageFinance(finance);
		
		mv.addObject("financeList", finances);
		mv.addObject("pagelist", pageArr);
		mv.addObject("page", page);
		mv.addObject("totalpage", totalPage);
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
	public ModelAndView getSumFinances(Finance finance){
		ModelAndView mv = new ModelAndView();
		List<Finance> ftimeList = financeService.getFtime();
		List<Finance> sumFinanceList = new ArrayList<>();
		
		double sumFexpend=0;
		double sumFincome=0;
		double sumFprofit=0;
		double sumFbalance=0;
		for (int i = 0; i < ftimeList.size(); i++) {
            finance.setFtime(ftimeList.get(i).getFtime());
            //总计
            sumFinanceList.add(financeService.getSumFinances(finance));
            sumFexpend += financeService.getSumFinances(finance).getFexpend();
            sumFincome += financeService.getSumFinances(finance).getFincome();
            sumFprofit += financeService.getSumFinances(finance).getFprofit();
            sumFbalance += financeService.getSumFinances(finance).getFbalance();
		}
		// 分页显示
		int page = 1;
		int start = 0;
		if (finance.getPage() != null) {
			page = finance.getPage();
		}
		// 数据总条数
		int total = ftimeList.size();
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
		finance.setStart(start);
		finance.setRows(DingZhi.hang);
		List<Finance> finances = new ArrayList<Finance>();
		List<Finance> sumfinances = new ArrayList<Finance>();
		finances = financeService.pageFtime(finance);
		for (int i = 0; i < finances.size(); i++) {
            finance.setFtime(finances.get(i).getFtime());
            //总计
            sumfinances.add(financeService.getSumFinances(finance));
		}
		mv.addObject("sumFexpend",sumFexpend );
		mv.addObject("sumFincome",sumFincome );
		mv.addObject("sumFprofit",sumFprofit );
		mv.addObject("sumFbalance",sumFbalance );
		mv.addObject("pagelist", pageArr);
		mv.addObject("page", page);
		mv.addObject("totalpage", totalPage);
		mv.addObject("sumFinanceList", sumfinances);
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
		List<Double> iList = new ArrayList<Double>();
		List<Double> eList = new ArrayList<Double>();
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
