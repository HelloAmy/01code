// ***********************************************************************
// Assembly         : exeHost
// Author           : zhujinrong
// Created          : 08-15-2014
//
// Last Modified By : zhujinrong
// Last Modified On : 08-18-2014
// ***********************************************************************
// <copyright file="Test.cs" company="Microsoft">
//     Copyright (c) Microsoft. All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System;
using System.Collections.Generic;
using Com.Amy.Database;

namespace FileTool
{
    /// <summary>
    /// 测试
    /// </summary>
    public class Test
    {
        /// <summary>
        /// 测试获取人员信息
        /// </summary>
        public static void TestGetAllPerson()
        {
            try
            {
                BPerson bll = new BPerson();
                List<MPerson> personList = bll.GetAllPersonInfo();
                if (personList != null && personList.Count > 0)
                {
                    foreach (MPerson item in personList)
                    {
                        Console.WriteLine(item.PersonName + "," + item.PersonHome);
                    }
                }
            }
            catch (Exception ex)
            {
                string str = ex.ToString();
                Console.WriteLine(str);
            }
        }

        /// <summary>
        /// 测试添加人员列表
        /// </summary>
        public static void AddPersonList()
        {
            try
            {
                BPerson bll = new BPerson();
                MPerson model = new MPerson();
                model.PersonName = "艾玛";
                model.PersonHome = "美国";
                List<MPerson> list = new List<MPerson>();
                list.Add(model);
                model = new MPerson();
                model.PersonName = "汤姆";
                model.PersonHome = "美国";
                list.Add(model);
                bool result = bll.AddPersonList(list);
                Console.WriteLine(result);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        /// <summary>
        /// 测试修改
        /// </summary>
        public static void UpdatePerson()
        {
            try
            {
                MPerson model = new MPerson();
                model.PersonName = "张三";
                model.PersonHome = "上海";
                BPerson bll = new BPerson();
                int result = bll.UpdatePerson(model);
                Console.WriteLine("结果:" + result);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        /// <summary>
        /// 测试删除
        /// </summary>
        //public static void DelPerson()
        //{
        //    try
        //    {
        //        MPerson model = new MPerson();
        //        model.PersonName = "张三";
        //        BPerson bll = new BPerson();
        //        int result = bll.DelPerson(model);
        //        Console.WriteLine("结果:" + result);
        //    }
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine(ex.ToString());
        //    }
        //}
    }
}
