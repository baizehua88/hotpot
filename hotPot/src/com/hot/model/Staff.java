package com.hot.model;

public class Staff {
	private Integer sid;
	private String sname;
	private String ssex;
	private Integer sphone;
	private String sposition;
	private String spassword;
	private Integer salary;
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
	@Override
	public String toString() {
		return "Staff [sid=" + sid + ", sname=" + sname + ", ssex=" + ssex + ", sphone=" + sphone + ", sposition="
				+ sposition + ", spassword=" + spassword + "]";
	}
	public Integer getSalary() {
		return salary;
	}
	public void setSalary(Integer salary) {
		this.salary = salary;
	}
}
