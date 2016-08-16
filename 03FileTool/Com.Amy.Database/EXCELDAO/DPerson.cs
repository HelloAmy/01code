// ***********************************************************************
// Assembly         : Com.Amy.Database
// Author           : zhujinrong
// Created          : 08-14-2014
//
// Last Modified By : zhujinrong
// Last Modified On : 08-14-2014
// ***********************************************************************
// <copyright file="DPerson.cs" company="Microsoft">
//     Copyright (c) Microsoft. All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System;
using System.Collections.Generic;
using System.Data.OleDb;

namespace Com.Amy.Database
{
    /// <summary>
    /// 人员信息数据库访问
    /// </summary>
    public class DPerson : IPerson
    {
        #region IPerson 成员

        /// <summary>
        /// 获取所有人员信息
        /// </summary>
        /// <param name="conn">连接</param>
        /// <returns>所有人员信息</returns>
        public List<MPerson> GetAllPersonInfo(OleDbConnection conn, OleDbTransaction tran)
        {
            List<MPerson> list = new List<MPerson>();
            string sql = "select PersonName,PersonHome from [PersonInfo$]";
            OleDbCommand cmd = new OleDbCommand(sql, conn, tran);
            using (OleDbDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    MPerson model = new MPerson();
                    model.PersonName = reader["PersonName"] == DBNull.Value ? string.Empty : reader["PersonName"].ToString();
                    model.PersonHome = reader["PersonHome"] == DBNull.Value ? string.Empty : reader["PersonHome"].ToString();
                    list.Add(model);
                }
            }

            return list;
        }

        /// <summary>
        /// 查询所有人员信息
        /// </summary>
        /// <param name="conn">连接</param>
        /// <returns>所有人员信息</returns>
        public List<MPerson> GetPersonInfo(OleDbConnection conn, OleDbTransaction tran, string personName)
        {
            List<MPerson> list = new List<MPerson>();
            string sql = "SELECT PersonName,PersonHome from [PersonInfo$] WHERE PersonName = @PersonName";
            OleDbCommand cmd = new OleDbCommand(sql, conn, tran);
            OleDbParameter[] para = 
            {
                new OleDbParameter("@PersonName", personName.Trim()),
            };
            cmd.Parameters.AddRange(para);
            using (OleDbDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    MPerson model = new MPerson();
                    model.PersonName = reader["PersonName"] == DBNull.Value ? string.Empty : reader["PersonName"].ToString();
                    model.PersonHome = reader["PersonHome"] == DBNull.Value ? string.Empty : reader["PersonHome"].ToString();
                    list.Add(model);
                }
            }

            return list;
        }


        /// <summary>
        /// 添加人员信息
        /// </summary>
        /// <param name="conn">连接</param>
        /// <param name="person">人员信息</param>
        /// <returns>影响记录数</returns>
        public int AddPerson(OleDbConnection conn, OleDbTransaction tran, MPerson person)
        {
            string sql = @"INSERT INTO [PersonInfo$](PersonName, PersonHome)
                            VALUES(@Name, @Home)";
            OleDbParameter[] para =
            {
                new OleDbParameter("@Name", person.PersonName),
                new OleDbParameter("@Home", person.PersonHome)
            };

            OleDbCommand cmd = null;
            cmd = new OleDbCommand(sql, conn, tran);
            cmd.Parameters.AddRange(para);
            return cmd.ExecuteNonQuery();
        }

        /// <summary>
        /// 修改人员信息
        /// </summary>
        /// <param name="conn">连接</param>
        /// <param name="tran">事物</param>
        /// <param name="model">人员</param>
        /// <returns>影响记录数</returns>
        public int UpdatePerson(OleDbConnection conn, OleDbTransaction tran, MPerson model)
        {
            string sql = string.Format(@"
                            UPDATE [PersonInfo$]
                            SET PersonHome=@PersonHome
                            WHERE PersonName='{0}'
                        ", model.PersonName);

            OleDbParameter[] para = 
            {
                new OleDbParameter("@PersonHome", model.PersonHome.Trim())
            };

            OleDbCommand cmd = null;
            cmd = new OleDbCommand(sql, conn, tran);
            cmd.Parameters.AddRange(para);
            return cmd.ExecuteNonQuery();
        }

        /// <summary>
        /// 删除人员信息【不支持】
        /// </summary>
        /// <param name="conn">连接</param>
        /// <param name="tran">事物</param>
        /// <param name="model">人员</param>
        /// <returns>影响记录数</returns>
        public int DelPerson(OleDbConnection conn, OleDbTransaction tran, MPerson model)
        {
            string sql = string.Format(@"
                            DELETE FROM [PersonInfo$]
                            WHERE PersonName='{0}'
                        ", model.PersonName);
            OleDbCommand cmd = null;
            cmd = new OleDbCommand(sql, conn, tran);
            return cmd.ExecuteNonQuery();
        }


        #endregion
    }
}
