package com.hot.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.hot.model.Finance;
import com.hot.model.Recipe;
import com.hot.service.FinanceService;
import com.hot.service.RecipeService;
import com.hot.utils.ExcelUtil;

@Controller
@RequestMapping("/stock")
public class ExcelController {
	
	
	@Autowired
	@Qualifier("recipeService")
	private RecipeService recipeService;
	@Autowired
	@Qualifier("financeService")
	private FinanceService financeService;
	
	//开发者数据导出功能
	@RequestMapping("/excelStock.do")
	@ResponseBody
	public String Export(HttpServletRequest request) throws Exception {	
		
		 List<Map<String, Object>> headInfoList = new ArrayList<Map<String,Object>>(); 
         Map<String, Object> itemMap = new HashMap<String, Object>(); 
         
         itemMap = new HashMap<String, Object>(); 
         itemMap.put("title", "菜品名"); 
         itemMap.put("columnWidth", 50); 
         itemMap.put("dataKey", "XH1"); 
         headInfoList.add(itemMap); 
         
         itemMap = new HashMap<String, Object>(); 
         itemMap.put("title", "数量"); 
         itemMap.put("columnWidth", 50); 
         itemMap.put("dataKey", "XH2"); 
         headInfoList.add(itemMap); 
 
         List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>(); 
         Map<String, Object> dataItem = null;
         
         List<Recipe> recipes = new ArrayList<Recipe>();
         recipes = jsonMap(request);
         
         for(int i=0; i < recipes.size(); i++){ 
         dataItem = new HashMap<String, Object>(); 
         Recipe re = recipes.get(i);
         dataItem.put("XH1", ""+re.getRname()); 
         dataItem.put("XH2", ""+re.getStock()); 
         dataList.add(dataItem); 
         } 
         ExcelUtil.exportExcel2FilePath("好辣火锅菜品入库数量","D:\\Users\\sudo\\"+getTime()+"-入库单.xls", headInfoList, dataList); 
         return "OK";
	}
	
	//开发者数据导出功能
	@RequestMapping("/addStock.do")
	@ResponseBody
	public String addStock(HttpServletRequest request) throws Exception {
		
		int row = 0;
        List<Recipe> recipes = new ArrayList<Recipe>();
        recipes = jsonMap(request);
        int fexpend = 0; 
        for(int i=0; i < recipes.size(); i++){ 
	        Recipe re = recipes.get(i);
	        row = recipeService.addStock(re);
	        fexpend += re.getRbid() * re.getStock();
	        row++;
        } 
        System.out.println(fexpend);
        if (row > 0) {
        	Finance finance = new Finance();
        	finance.setFtime(getTime1());
        	finance.setFexpend(fexpend);
        	finance.setFincome(0);
        	finance.setFbalance(0-fexpend);
        	finance.setFprofit(0-fexpend);
        	financeService.addFinance(finance);
        	
			return "OK";
		}else {
			return "FAIL";
		}
	}
	
	public String getTime1() {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式 yyyy/MM/dd HH:mm:ss
		String time = dateFormat.format( now ); 
		return time;
	}
	
	public String getTime() {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("HH_mm_ss");//可以方便地修改日期格式 yyyy/MM/dd HH:mm:ss
		String time = dateFormat.format(now); 
		return time;
	}
	
	public List<Recipe> jsonMap(HttpServletRequest request) {
		String ds = request.getParameter("ds");
		JsonParser parser = new JsonParser();
		JsonArray jsonArray = parser.parse(ds).getAsJsonArray();
		Gson gson = new Gson();
		List<Recipe> recipes = new ArrayList<Recipe>();
		for(JsonElement recipe : jsonArray) {
			Recipe recipeBean = gson.fromJson(recipe, Recipe.class);
			recipes.add(recipeBean);
		}
		return recipes;
	}

	
}
