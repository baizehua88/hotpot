package com.hot.model;

public class Finance {
		public int fid;
		public int fincome;
		public int fexpend;
		public int fprofit;
		public int fbalance;
		public String ftime;
		public int getFid() {
			return fid;
		}
		public void setFid(int fid) {
			this.fid = fid;
		}
		public int getFincome() {
			return fincome;
		}
		public void setFincome(int fincome) {
			this.fincome = fincome;
		}
		public int getFexpend() {
			return fexpend;
		}
		public void setFexpend(int fexpend) {
			this.fexpend = fexpend;
		}
		public int getFprofit() {
			return fprofit;
		}
		public void setFprofit(int fprofit) {
			this.fprofit = fprofit;
		}

		public int getFbalance() {
			return fbalance;
		}
		public void setFbalance(int fbalance) {
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
