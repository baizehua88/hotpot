package com.hot.utils;

import java.util.Random;

public class Tools { 
	
	private static final String ALLCHAR = "0123456789";
	
	public static String subStr(String str, int start) 
	{ 
		if (str == null || str.equals("") || str.length() == 0) 
			return ""; 
		if (start < str.length()){ 
			return str.substring(start); 
		} else { 
			return ""; 
		} 
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
