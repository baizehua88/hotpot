package com.hot.model;

public class Order {
	private Integer oid;
	private String otime;
	private Integer did;
	private Double oprice;
	private String ostate;
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
	}
	public Double getOprice() {
		return oprice;
	}
	public void setOprice(Double oprice) {
		this.oprice = oprice;
	}
	public String getOstate() {
		return ostate;
	}
	public void setOstate(String ostate) {
		this.ostate = ostate;
	}
}
