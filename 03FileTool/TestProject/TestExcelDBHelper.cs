using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FileTool;
using System.Data;
using System.Data.OleDb;

namespace TestProject
{
    /// <summary>
    /// UnitTest1 的摘要说明
    /// </summary>
    [TestClass]
    public class TestExcelDBHelper
    {
        public TestExcelDBHelper()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }

        private TestContext testContextInstance;

        /// <summary>
        ///获取或设置测试上下文，该上下文提供
        ///有关当前测试运行及其功能的信息。
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region 附加测试属性
        //
        // 编写测试时，还可使用以下附加属性:
        //
        // 在运行类中的第一个测试之前使用 ClassInitialize 运行代码
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // 在类中的所有测试都已运行之后使用 ClassCleanup 运行代码
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // 在运行每个测试之前，使用 TestInitialize 来运行代码
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // 在每个测试运行完之后，使用 TestCleanup 来运行代码
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        [TestMethod]
        public void TestMethod1()
        {
            //
            // TODO: 在此	添加测试逻辑
            //
            try
            {
                string sql = "select * from [PersonInfo$]";
                DataSet ds = ExcelDBHelper.GetReader(sql);
                if (ds != null && ds.Tables.Count > 0)
                {
                    List<string> list = new List<string>();
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        string str = dr[0].ToString() + dr[1].ToString();
                        list.Add(str);
                    }
                }
            }
            catch (Exception ex)
            {
                string str = ex.ToString();
            }
        }

        [TestMethod]
        public void TestInsert()
        {
            string sql = @"INSERT INTO [PersonInfo$](姓名, 籍贯)
                            VALUES(@Name, @Home)";
            OleDbParameter[] para =
            {
                new OleDbParameter("@Name", "王五"),
                new OleDbParameter("@Home", "绵阳")
            };

            try
            {
                int result = ExcelDBHelper.ExecuteCommand(sql, para);
            }
            catch (Exception ex)
            {
                string str = ex.ToString();
            }
            finally
            {

            }
        }
    }
}
