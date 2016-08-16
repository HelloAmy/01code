// ***********************************************************************
// Assembly         : Com.Amy.Database
// Author           : zhujinrong
// Created          : 08-14-2014
//
// Last Modified By : zhujinrong
// Last Modified On : 08-15-2014
// ***********************************************************************
// <copyright file="BAddPersonsTrans.cs" company="Microsoft">
//     Copyright (c) Microsoft. All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System.Collections.Generic;
using System;

namespace Com.Amy.Database
{
    /// <summary>
    /// 添加人员事物
    /// </summary>
    public class BAddPersonsTrans : ExcelDbTransaction
    {
        /// <summary>
        /// 人员信息
        /// </summary>
        private List<MPerson> personList = null;

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="list">人员信息</param>
        public BAddPersonsTrans(List<MPerson> list)
        {
            this.personList = list;
            this.Connection = ConnectionFactory.BaseInfoDBWrite;
            this.IsolationLevel = System.Data.IsolationLevel.ReadCommitted;
            this.IsBeginTransation = true;
        }

        /// <summary>
        /// 是否成功
        /// </summary>
        public bool IsSuccess
        {
            get;
            set;
        }

        /// <summary>
        /// 添加人员信息
        /// </summary>
        protected override void ExecuteMethod()
        {
            IPerson personDao = DALFactory.GetPersonDao();
            if (this.personList != null && this.personList.Count > 0)
            {
                foreach (MPerson item in this.personList)
                {
                    personDao.AddPerson(this.Connection, this.Transation, item);
                }

                this.IsSuccess = true;
            }
        }
    }
}
