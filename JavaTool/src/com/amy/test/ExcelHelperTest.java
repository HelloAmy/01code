package com.amy.test;

import junit.framework.Assert;

import org.junit.Test;

import com.amy.FileTool.ExcelHelper;

public class ExcelHelperTest {

	@Test
	public void test() {
		String[][] arr = ExcelHelper
				.Read("D:\\06GitHub\\01code\\JavaTool\\bin\\com\\amy\\test\\doc\\test.xls");
		if (arr != null && arr.length > 0) {
			Assert.assertTrue(true);
		} else {
			Assert.fail("Ê§”¡ÁË");
		}
	}

}
