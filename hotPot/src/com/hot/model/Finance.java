package com.hot.model;

public class Finance {
		public int fid;
		public double fincome;
		public double fexpend;
		public double fprofit;
		public double fbalance;
		public String ftime;
		private Integer start;
		private Integer rows;
		private Integer page;
		public int getFid() {
			return fid;
		}
		public void setFid(int fid) {
			this.fid = fid;
		}
		public double getFincome() {
			return fincome;
		}
		public void setFincome(double fincome) {
			this.fincome = fincome;
		}
		public double getFexpend() {
			return fexpend;
		}
		public void setFexpend(double fexpend) {
			this.fexpend = fexpend;
		}
		public double getFprofit() {
			return fprofit;
		}
		public void setFprofit(double fprofit) {
			this.fprofit = fprofit;
		}

		public double getFbalance() {
			return fbalance;
		}
		public void setFbalance(double fbalance) {
			this.fbalance = fbalance;
		}
		public String getFtime() {
			return ftime;
		}
		public void setFtime(String ftime) {
			this.ftime = ftime;
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
			return "Finance [fid=" + fid + ", fincome=" + fincome + ", fexpend=" + fexpend + ", fprofit=" + fprofit
					+ ", fbalance=" + fbalance + ", ftime=" + ftime + ", start=" + start + ", rows=" + rows + ", page="
					+ page + "]";
		}
		
}
