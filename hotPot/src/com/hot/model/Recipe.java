package com.hot.model;

public class Recipe {
	private Integer rid;
	private String rname;
	private Integer rbid;
	private String rsort;
	private Integer rprice;
	private String rstate;
	private Integer rstock;
	private String rimage;
	private Integer start;
	private Integer rows;
	private Integer page;
	private Integer stock;
	
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public Integer getRbid() {
		return rbid;
	}
	public void setRbid(Integer rbid) {
		this.rbid = rbid;
	}
	public String getRsort() {
		return rsort;
	}
	public void setRsort(String rsort) {
		this.rsort = rsort;
	}
	public Integer getRprice() {
		return rprice;
	}
	public void setRprice(Integer rprice) {
		this.rprice = rprice;
	}
	public String getRstate() {
		return rstate;
	}
	public void setRstate(String rstate) {
		this.rstate = rstate;
	}
	public Integer getRstock() {
		return rstock;
	}
	public void setRstock(Integer rstock) {
		this.rstock = rstock;
	}
	public String getRimage() {
		return rimage;
	}
	public void setRimage(String rimage) {
		this.rimage = rimage;
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
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	@Override
	public String toString() {
		return "Recipe [rid=" + rid + ", rname=" + rname + ", rbid=" + rbid + ", rsort=" + rsort + ", rprice=" + rprice
				+ ", rstate=" + rstate + ", rstock=" + rstock + ", rimage=" + rimage + ", start=" + start + ", rows="
				+ rows + ", page=" + page + ", stock=" + stock + "]";
	}
}
