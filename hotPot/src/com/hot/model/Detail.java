package com.hot.model;

public class Detail {
	private Integer id;
	private String rname;
	private Integer rno;
	private Integer rprice;
	private Integer rtotal;
	private Integer oid;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public Integer getRno() {
		return rno;
	}
	public void setRno(Integer rno) {
		this.rno = rno;
	}
	public Integer getRprice() {
		return rprice;
	}
	public void setRprice(Integer rprice) {
		this.rprice = rprice;
	}
	public Integer getRtotal() {
		return rtotal;
	}
	public void setRtotal(Integer rtotal) {
		this.rtotal = rtotal;
	}
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	@Override
	public String toString() {
		return "Detail [id=" + id + ", rname=" + rname + ", rno=" + rno + ", rprice=" + rprice + ", rtotal=" + rtotal
				+ ", oid=" + oid + "]";
	}
}
