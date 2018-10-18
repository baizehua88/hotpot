package com.hot.model;

import java.util.List;

public class ListFinance {
	
	private List<String> tList;
	private List<Double> iList;
	private List<Double> eList;
	
	public ListFinance() {}
	
	public ListFinance(List<String> tList,List<Double> iList,List<Double> eList) {
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

	public List<Double> getiList() {
		return iList;
	}

	public void setiList(List<Double> iList) {
		this.iList = iList;
	}

	public List<Double> geteList() {
		return eList;
	}

	public void seteList(List<Double> eList) {
		this.eList = eList;
	}
}
