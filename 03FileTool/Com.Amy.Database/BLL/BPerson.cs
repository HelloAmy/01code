// ***********************************************************************
// Assembly         : Com.Amy.Database
// Author           : zhujinrong
// Created          : 08-14-2014
//
// Last Modified By : zhujinrong
// Last Modified On : 08-14-2014
// ***********************************************************************
// <copyright file="BPerson.cs" company="Microsoft">
//     Copyright (c) Microsoft. All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System.Collections.Generic;
using System.Data.OleDb;

namespace Com.Amy.Database
{
    /// <summary>
    /// 人员信息业务层
    /// </summary>
    public class BPerson
    {
        /// <summary>
        /// 获取所有人员信息
        /// </summary>
        /// <returns>所有人员信息</returns>
        public List<MPerson> GetAllPersonInfo()
        {
            IPerson dao = DALFactory.GetPersonDao();
            OleDbConnection conn = ConnectionFactory.BaseInfoDBRead;
            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                return dao.GetAllPersonInfo(conn, null);
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }
        }

        /// <summary>
        /// 查询所有人员信息
        /// </summary>
        /// <returns>所有人员信息</returns>
        public List<MPerson> GetPersonInfo(string personName)
        {
            IPerson dao = DALFactory.GetPersonDao();
            OleDbConnection conn = ConnectionFactory.BaseInfoDBRead;
            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                return dao.GetPersonInfo(conn, null, personName);
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }
        }

        /// <summary>
        /// 添加人员列表
        /// </summary>
        /// <param name="list">人员列表</param>
        /// <returns>是否成功</returns>
        public bool AddPersonList(List<MPerson> list)
        {
            BAddPersonsTrans tran = new BAddPersonsTrans(list);
            tran.Execute();
            return tran.IsSuccess;
        }

        /// <summary>
        /// 修改人员信息
        /// </summary>
        /// <param name="model">人员对象</param>
        /// <returns>影响数据库记录数</returns>
        public int UpdatePerson(MPerson model)
        {
            IPerson dao = DALFactory.GetPersonDao();
            OleDbConnection conn = ConnectionFactory.BaseInfoDBWrite;
            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                return dao.UpdatePerson(conn, null, model);
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }
        }

        /// <summary>
        /// 删除人员信息【不支持】
        /// </summary>
        /// <param name="model">人员对象</param>
        /// <returns>影响数据库记录数</returns>
        public int DelPerson(MPerson model)
        {
            IPerson dao = DALFactory.GetPersonDao();
            OleDbConnection conn = ConnectionFactory.BaseInfoDBWrite;
            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                return dao.DelPerson(conn, null, model);
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }
        }
    }
}
