package com.hot.model;

import java.util.List;

public class ListFinance {
	
	private List<String> tList;
	private List<Integer> iList;
	private List<Integer> eList;
	
	public ListFinance() {}
	
	public ListFinance(List<String> tList,List<Integer> iList,List<Integer> eList) {
		this.tList = tList;
		this.iList = iList;
		this.eList = eList;
	}
	
	public List<String> gettList() {
		return tList;
	}
	public void settList(List<String> tList) {
		this.tList = tList;
	}
	public List<Integer> getiList() {
		return iList;
	}
	public void setiList(List<Integer> iList) {
		this.iList = iList;
	}
	public List<Integer> geteList() {
		return eList;
	}
	public void seteList(List<Integer> eList) {
		this.eList = eList;
	}
}
