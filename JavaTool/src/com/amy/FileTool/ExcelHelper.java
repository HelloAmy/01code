package com.amy.FileTool;

import java.io.File;
import jxl.Sheet;
import jxl.Workbook;

public class ExcelHelper {
	public static String[][] Read(String fileName) {
		String[][] arr = null;
		Workbook book = null;
		try {
			book = Workbook.getWorkbook(new File(fileName));

		} catch (Exception ex) {
			System.out.println(ex.toString());
		}

		// 获得第一个工作表格对象
		if (book != null) {
			Sheet sheet = book.getSheet(0);
			int columns = sheet.getColumns();
			int rows = sheet.getRows();
			if (columns > 0 && rows > 0) {
				arr = new String[rows][columns];
				for (int i = 0; i < rows; i++) {
					for (int j = 0; j < columns; j++) {
						// 获取第i行第j列的数据
						arr[i][j] = sheet.getCell(j, i).getContents();
					}
				}

			}
		}

		return arr;
	}
}
