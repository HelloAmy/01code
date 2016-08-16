using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.OleDb;

namespace FileTool
{
    public class ExcelHelper
    {
        public static DataSet LoadDataFromExcel(string filePath, string name)
        {
            DataSet oleDsExcel = new DataSet();
            try
            {
                string strConn;
                strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + filePath + ";Extended Properties='Excel 12.0;HDR=YES;IMEX=1'";
                OleDbConnection OleConn = new OleDbConnection(strConn);
                OleConn.Open();
                OleDbDataAdapter OleDaExcel = null;

                String sql = "SELECT * FROM [" + name + "$]";
                OleDaExcel = new OleDbDataAdapter(sql, OleConn);
                OleDaExcel.Fill(oleDsExcel, "All");

            }
            catch (Exception ex)
            {
                Console.WriteLine("数据绑定Excel失败！失败原因：" + ex.Message.ToString());
                return null;
            }

            return oleDsExcel;
        }

    }
}
