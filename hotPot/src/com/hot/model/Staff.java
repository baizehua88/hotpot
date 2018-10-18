package com.hot.model;

public class Staff {
	private Integer sid;
	private String sname;
	private String ssex;
	private Integer sphone;
	private String sposition;
	private String spassword;
	private Integer salary;
	private Integer start;
	private Integer rows;
	private Integer page;
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSsex() {
		return ssex;
	}
	public void setSsex(String ssex) {
		this.ssex = ssex;
	}
	public Integer getSphone() {
		return sphone;
	}
	public void setSphone(Integer sphone) {
		this.sphone = sphone;
	}
	public String getSposition() {
		return sposition;
	}
	public void setSposition(String sposition) {
		this.sposition = sposition;
	}
	public String getSpassword() {
		return spassword;
	}
	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}
	public Integer getSalary() {
		return salary;
	}
	public void setSalary(Integer salary) {
		this.salary = salary;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	@Override
	public String toString() {
		return "Staff [sid=" + sid + ", sname=" + sname + ", ssex=" + ssex + ", sphone=" + sphone + ", sposition="
				+ sposition + ", spassword=" + spassword + ", salary=" + salary + ", start=" + start + ", rows=" + rows
				+ ", page=" + page + "]";
	}
	
}
