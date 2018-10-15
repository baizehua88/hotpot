package com.hot.utils;

import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;

public class ExcelUtil {
	
	/**
	 * 创建workbook
	 * @return
	 */
	public HSSFWorkbook getHSSFWorkbook() {
		return new HSSFWorkbook();
	}
	
	/**
	 * 创建sheet
	 * @param hssfWorkbook
	 * @param sheetName
	 * @return
	 */
	public HSSFSheet getHSSFSheet(HSSFWorkbook hssfWorkbook,String sheetName) {
		return hssfWorkbook.createSheet(sheetName);
	}
	
	/**
	 * 写入表头信息
	 * @param hssfWorkbook
	 * @param hssfSheet
	 * @param headInfoList
	 */
	public void writeHeader(HSSFWorkbook hssfWorkbook,HSSFSheet hssfSheet ,
			List<Map<String, Object>> headInfoList) {
		HSSFCellStyle cStyle = hssfWorkbook.createCellStyle();
		HSSFFont font = hssfWorkbook.createFont();
		font.setFontHeightInPoints((short)12);
		font.setBoldweight(Font.BOLDWEIGHT_BOLD);
		cStyle.setFont(font);
		cStyle.setAlignment(CellStyle.ALIGN_CENTER);
		
		//创建EXCEL第一行
		HSSFRow row = hssfSheet.createRow(0);
		row.setHeight((short)380);
		HSSFCell cell = null;
		Map<String, Object> headInfo = null;
		
		//处理excel表头
		for(int i=0,len = headInfoList.size(); i<len;i++) {
			headInfo = headInfoList.get(i);
			cell = row.createCell(i);
			cell.setCellValue(headInfo.get("title").toString());
			cell.setCellStyle(cStyle);
			if (headInfo.containsKey("columnWidth")) {
				hssfSheet.setColumnWidth(i, (short)(((Integer)headInfo.get("columnWidth") * 8) / ((double) 1 / 20)));
			}
		}
	}
	
	/**
	 * 写入内容部分
	 * @param hssfWorkbook
	 * @param hssfSheet
	 * @param startIndex
	 * @param headInfoList
	 * @param dataList
	 */
	public void writeContent(HSSFWorkbook hssfWorkbook,
			HSSFSheet hssfSheet,int startIndex,  
            List<Map<String, Object>> headInfoList, List<Map<String, Object>> dataList) {
		Map<String, Object> headinfo = null;
		HSSFRow row = null;
		HSSFCell cell = null;
		Map<String, Object> dataItem = null;
		Object vObject = null;
		for(int i=0, rownum = startIndex, len = (startIndex + dataList.size()); rownum < len; i++,rownum++) {
			row = hssfSheet.createRow(rownum);
			row.setHeightInPoints(16);
			dataItem = dataList.get(i);
			for(int j=0,jlen = headInfoList.size();j<jlen;j++) {
				headinfo = headInfoList.get(j);
				cell = row.createCell(j);
				vObject = dataItem.get(headinfo.get("dataKey").toString());
				
				//????
				if (vObject instanceof String) {
					cell.setCellValue((String)vObject);
				}else if (vObject instanceof Boolean) {
					cell.setCellValue((Boolean)vObject);
				}else if (vObject instanceof Calendar) {
					cell.setCellValue((Calendar)vObject);
				}else if (vObject instanceof Double) {
					cell.setCellValue((Double)vObject);
				}else if (vObject instanceof Integer
						|| vObject instanceof Long
						|| vObject instanceof Short
						|| vObject instanceof Float) {
					cell.setCellValue(Double.parseDouble(vObject.toString()));
				}else if (vObject instanceof HSSFRichTextString) {
					cell.setCellValue((HSSFRichTextString)vObject);
				}else {
					cell.setCellValue(vObject.toString());
				}
			}
		}
	}
	
	/**
	 * 保存文件到filepath
	 * @param hssfWorkbook
	 * @param filePath
	 * @throws Exception
	 */
	public void write2FilePath(HSSFWorkbook hssfWorkbook,String filePath) 
			throws Exception{
		FileOutputStream fileOut = null;
		try {
			fileOut = new FileOutputStream(filePath);
			hssfWorkbook.write(fileOut);
		} finally {
			if (fileOut != null) {
				fileOut.close();
			}
		}
	}
	
	/**
	 * 导出excel
	 * @param sheetName
	 * @param filePath
	 * @param headInfoList
	 * @param dataList
	 * @throws Exception
	 */
	public static void exportExcel2FilePath(String sheetName,String filePath,
			List<Map<String, Object>> headInfoList,
			List<Map<String, Object>> dataList) throws Exception{
		ExcelUtil excelUtil = new ExcelUtil();
		
		//创建Workbook
		HSSFWorkbook hssfWorkbook = excelUtil.getHSSFWorkbook();
		//创建sheet
		HSSFSheet hssfSheet = excelUtil.getHSSFSheet(hssfWorkbook, sheetName);
		//写入head
		excelUtil.writeHeader(hssfWorkbook, hssfSheet, headInfoList);
		//写入内容
		excelUtil.writeContent(hssfWorkbook, hssfSheet, 1, headInfoList, dataList);
		//保存文件到filePath中
		excelUtil.write2FilePath(hssfWorkbook, filePath);
	}
}
