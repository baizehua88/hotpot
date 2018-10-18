package com.hot.model;

public class Finance {
		public int fid;
		public double fincome;
		public double fexpend;
		public double fprofit;
		public double fbalance;
		public String ftime;
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
		@Override
		public String toString() {
			return "Finance [fid=" + fid + ", fincome=" + fincome + ", fexpend=" + fexpend + ", fprofit=" + fprofit
					+ ", fbalance=" + fbalance + ", ftime=" + ftime + "]";
		}
		
}
