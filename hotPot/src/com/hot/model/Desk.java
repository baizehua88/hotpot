package com.hot.model;

public class Desk {
	private Integer did;
	private String dname;
	private Integer dcount;
	private String dstate;
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public Integer getDcount() {
		return dcount;
	}
	public void setDcount(Integer dcount) {
		this.dcount = dcount;
	}
	public String getDstate() {
		return dstate;
	}
	public void setDstate(String dstate) {
		this.dstate = dstate;
	}
	@Override
	public String toString() {
		return "Desk [did=" + did + ", dname=" + dname + ", dcount=" + dcount + ", dstate=" + dstate + "]";
	}
}
