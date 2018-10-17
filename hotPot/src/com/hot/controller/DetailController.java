package com.hot.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.hot.model.Detail;

@Controller
@RequestMapping("/detail")
public class DetailController {
	@Autowired
	@Qualifier("detailService")
	private com.hot.service.DetailService detailService;
	
	@RequestMapping("/addDetail.do")
	@ResponseBody
	//javax.servlet.http.HttpServletRequest request
	public String addDetail(String detailList){
		List<Detail> details = new ArrayList<Detail>();
		details = jsonMap(detailList);
		for (int i = 0; i < details.size(); i++) {
			Detail detail = new Detail();
			detail = details.get(i);
			if (detail.getRno()>0) {
				detailService.addDetail(detail);
			}			
		}	
		return null;		
	}
	
	public List<Detail> jsonMap(String jsonresult) {
		JsonParser parser = new JsonParser();
		
		JsonArray jsonArray = parser.parse(jsonresult).getAsJsonArray();
		Gson gson = new Gson();
		List<Detail> details = new ArrayList<Detail>();
		for(JsonElement detail : jsonArray) {
			Detail detailBean = gson.fromJson(detail, Detail.class);
			details.add(detailBean);
		}
		return details;
	}
	
	@RequestMapping("getDetailByOid.do")
	@ResponseBody
	public List<Detail> getDetailByOid(int oid){
		List<Detail> detailList = detailService.getDetailByOid(oid);
		return detailList;
	}
		
	
	
}
