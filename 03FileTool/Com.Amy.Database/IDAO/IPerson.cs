// ***********************************************************************
// Assembly         : Com.Amy.Database
// Author           : zhujinrong
// Created          : 08-14-2014
//
// Last Modified By : zhujinrong
// Last Modified On : 08-14-2014
// ***********************************************************************
// <copyright file="IPerson.cs" company="Microsoft">
//     Copyright (c) Microsoft. All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System.Collections.Generic;
using System.Data.OleDb;

namespace Com.Amy.Database
{
    /// <summary>
    /// 人员数据库访问接口
    /// </summary>
    public interface IPerson
    {
        /// <summary>
        /// 获取所有人员信息
        /// </summary>
        /// <param name="conn">连接</param>
        /// <param name="tran">事物</param>
        /// <returns>所有人员信息</returns>
        List<MPerson> GetAllPersonInfo(OleDbConnection conn, OleDbTransaction tran);

        /// <summary>
        /// 添加人员信息
        /// </summary>
        /// <param name="conn">连接</param>
        /// <param name="tran">事物</param>
        /// <param name="person">人员信息</param>
        /// <returns>影响记录数</returns>
        int AddPerson(OleDbConnection conn, OleDbTransaction tran, MPerson person);

        /// <summary>
        /// 修改人员信息
        /// </summary>
        /// <param name="conn">连接</param>
        /// <param name="tran">事物</param>
        /// <param name="model">人员</param>
        /// <returns>影响记录数</returns>
        int UpdatePerson(OleDbConnection conn, OleDbTransaction tran, MPerson model);

        /// <summary>
        /// 查询人员信息
        /// </summary>
        /// <param name="conn">连接</param>
        /// <returns>所有人员信息</returns>
        List<MPerson> GetPersonInfo(OleDbConnection conn, OleDbTransaction tran, string personName);

        /// <summary>
        /// 删除人员信息【不支持】
        /// </summary>
        /// <param name="conn">连接</param>
        /// <param name="tran">事物</param>
        /// <param name="model">人员</param>
        /// <returns>影响记录数</returns>
        int DelPerson(OleDbConnection conn, OleDbTransaction tran, MPerson model);
    }
}
