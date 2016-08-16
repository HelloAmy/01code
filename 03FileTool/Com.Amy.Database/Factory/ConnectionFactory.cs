// ***********************************************************************
// Assembly         : Com.Amy.Database
// Author           : zhujinrong
// Created          : 08-14-2014
//
// Last Modified By : zhujinrong
// Last Modified On : 08-14-2014
// ***********************************************************************
// <copyright file="ConnectionFactory.cs" company="Microsoft">
//     Copyright (c) Microsoft. All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System.Configuration;
using System.Data.OleDb;

namespace Com.Amy.Database
{
    /// <summary>
    /// 数据库链接工厂
    /// </summary>
    public class ConnectionFactory
    {
        /// <summary>
        /// 基础数据读库
        /// </summary>
        public static OleDbConnection BaseInfoDBRead
        {
            get { return GetConnection("BaseInfoDBRead"); }
        }

        /// <summary>
        /// 基础数据写库
        /// </summary>
        public static OleDbConnection BaseInfoDBWrite
        {
            get { return GetConnection("BaseInfoDBWrite"); }
        }

        /// <summary>
        /// 根据连接字符串获取连接
        /// </summary>
        /// <param name="connectionKey">连接键</param>
        /// <returns>连接</returns>
        public static OleDbConnection GetConnection(string connectionKey)
        {
            OleDbConnection connection = null;
            string connectionString = ConfigurationManager.ConnectionStrings[connectionKey].ConnectionString;
            connection = new OleDbConnection(connectionString);
            return connection;
        }
    }
}
