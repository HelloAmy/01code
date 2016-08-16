using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data;

namespace TestProject
{
    /// <summary>
    /// TestExcel 的摘要说明
    /// </summary>
    [TestClass]
    public class TestExcel
    {
        public TestExcel()
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
            //DataSet ds = ExcelHelper.LoadDataFromExcel("D:/006GitHub/FileTool/TestProject/ExcelExample.xls", "PersonInfo");
            //if (ds == null || ds.Tables.Count == 0)
            //{
            //    Assert.Fail("失败");
            //}
            //else
            //{
            //    List<string> list = new List<string>();
            //    if (ds.Tables != null && ds.Tables.Count >= 0)
            //    {
            //        foreach (DataRow dr in ds.Tables[0].Rows)
            //        {
            //            string str = dr["姓名"].ToString() + dr["籍贯"].ToString();
            //            list.Add(str);
            //        }
            //    }
            //}
        }
    }
}
