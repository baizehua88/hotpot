package com.hot.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class RandomTool {
	
	private static final String ALLCHAR = "0123456789";
	
	 public static String RandomCount()
	 { 
		 String Orderno = null; 
		 SimpleDateFormat format = new SimpleDateFormat("yyyyMMddss"); 
		 // 时间字符串产生方式 
		 String uid_pfix = "NO" + format.format(new Date()); 
		 Orderno = uid_pfix + RandomTool.getRandomNum();
		 return Orderno;
	 }
	 
	 public static String getRandomNum() {
		StringBuffer sBuffer = new StringBuffer();
		Random random = new Random();
		for(int i = 0;i < 4;i++) {
			sBuffer.append(ALLCHAR.charAt(random.nextInt(ALLCHAR.length())));
		}
		return sBuffer.toString();
	}
 }
