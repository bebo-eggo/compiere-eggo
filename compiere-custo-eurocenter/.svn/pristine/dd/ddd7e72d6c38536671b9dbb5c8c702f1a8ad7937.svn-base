package com.audaxis.compiere.xls.util;

import java.io.OutputStream;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Timestamp;

import org.apache.commons.lang.exception.NestableException;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFDataFormat;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.compiere.util.CLogger;

public class ResultSetToExcelUtil {

	private XSSFWorkbook workbook;
	private XSSFSheet sheet;
	private XSSFFont boldFont;
	private XSSFDataFormat format;
	private ResultSet resultSet;
	private FormatType[] formatTypes;
	public static final String DATA_FORMAT = "dataFormat";
	public static final String FILL_BACKGROUND_COLOR = "fillBackgroundColor";
	public static final String FILL_FOREGROUND_COLOR = "fillForegroundColor";
	public static final String FILL_PATTERN = "fillPattern";

	protected CLogger log = CLogger.getCLogger(this.getClass());

	  
	public ResultSetToExcelUtil(ResultSet resultSet, FormatType[] formatTypes,
			String sheetName) {
		workbook = new XSSFWorkbook();
		this.resultSet = resultSet;
		sheet = workbook.createSheet(sheetName);
		boldFont = workbook.createFont();
		boldFont.setBoldweight(XSSFFont.BOLDWEIGHT_BOLD);
		format = workbook.createDataFormat();
		this.formatTypes = formatTypes;

	}

	public ResultSetToExcelUtil(ResultSet resultSet, String sheetName) {
		this(resultSet, null, sheetName);
	}

	private FormatType getFormatType(Class<?> _class) {
		if (_class == Integer.class || _class == Long.class) {
			return FormatType.INTEGER;
		} else if (_class == Float.class || _class == Double.class
				|| _class == BigDecimal.class) {
			return FormatType.FLOAT;
		} else if (_class == Timestamp.class || _class == java.sql.Date.class) {
			return FormatType.DATE;
		} else {
			return FormatType.TEXT;
		}
	}

	public void generate(OutputStream outputStream) throws Exception {
		try {
			ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
			if (formatTypes != null
					&& formatTypes.length != resultSetMetaData.getColumnCount()) {
				throw new IllegalStateException(
						"Number of types is not identical to number of resultset columns. "
								+ "Number of types: " + formatTypes.length
								+ ". Number of columns: "
								+ resultSetMetaData.getColumnCount());
			}

			int currentRow = 0;
			XSSFRow row = sheet.createRow(currentRow);
			int numCols = resultSetMetaData.getColumnCount();
			boolean isAutoDecideFormatTypes;
			if (isAutoDecideFormatTypes = (formatTypes == null)) {
				formatTypes = new FormatType[numCols];
			}

			for (int i = 0; i < numCols; i++) {
				String title = resultSetMetaData.getColumnName(i + 1);
				writeCell(row, i, title, FormatType.TEXT, boldFont);
				if (isAutoDecideFormatTypes) {
					Class<?> _class = Class.forName(resultSetMetaData
							.getColumnClassName(i + 1));
					formatTypes[i] = getFormatType(_class);
				}
			}

			currentRow++;

			// Write report rows
			while (resultSet.next()) {
				row = sheet.createRow(currentRow++);
				for (int i = 0; i < numCols; i++) {
					Object value = resultSet.getObject(i + 1);
					writeCell(row, i, value, formatTypes[i]);
				}
			}

			// Autosize columns
			for (int i = 0; i < numCols; i++) {
				sheet.autoSizeColumn((short) i);
			}

			workbook.write(outputStream);
		} finally {
			outputStream.close();
		}
	}


	private void writeCell(XSSFRow row, int col, Object value,
			FormatType formatType) throws NestableException {
		writeCell(row, col, value, formatType, null, null);
	}

	private void writeCell(XSSFRow row, int col, Object value,
			FormatType formatType, XSSFFont font) throws NestableException {
		writeCell(row, col, value, formatType, null, font);
	}

	private void writeCell(XSSFRow row, int col, Object value,
			FormatType formatType, Short bgColor, XSSFFont font)
			throws NestableException {
		XSSFCell cell = XSSFCellUtil.createCell(row, col, null);
		if (value == null) {
			return;
		}

		if (font != null) {
			XSSFCellStyle style = workbook.createCellStyle();
			style.setFont(font);
			cell.setCellStyle(style);
		}

		switch (formatType) {

		case TEXT:
			cell.setCellValue(value.toString());
			break;
		case INTEGER:
			cell.setCellValue(((Number) value).intValue());
			XSSFCellUtil.setCellStyleProperty(cell, workbook, DATA_FORMAT,
					format.getFormat(("#,##0")));
			break;
		case FLOAT:
			cell.setCellValue(((Number) value).doubleValue());
			XSSFCellUtil.setCellStyleProperty(cell, workbook, DATA_FORMAT,
					format.getFormat(("#,##0.00")));
			break;
		case DATE:
			cell.setCellValue((Timestamp) value);
			XSSFCellUtil.setCellStyleProperty(cell, workbook, DATA_FORMAT,
					format.getFormat(("dd/mm/yyyy")));
			break;
		case MONEY:
			cell.setCellValue(((Number) value).intValue());
			XSSFCellUtil.setCellStyleProperty(cell, workbook, DATA_FORMAT,
					format.getFormat("#,##0.00;#,##0.00"));
			break;
		case PERCENTAGE:
			cell.setCellValue(((Number) value).doubleValue());
			XSSFCellUtil.setCellStyleProperty(cell, workbook, DATA_FORMAT,
					format.getFormat("0.00%"));
		}

		if (bgColor != null) {
			XSSFCellUtil.setCellStyleProperty(cell, workbook,
					FILL_FOREGROUND_COLOR, bgColor);
			XSSFCellUtil.setCellStyleProperty(cell, workbook, FILL_PATTERN,
					XSSFCellStyle.SOLID_FOREGROUND);
		}
	}

	public enum FormatType {
		TEXT, INTEGER, FLOAT, DATE, MONEY, PERCENTAGE
	}

}