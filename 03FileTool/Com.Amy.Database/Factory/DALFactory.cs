// ***********************************************************************
// Assembly         : Com.Amy.Database
// Author           : zhujinrong
// Created          : 08-14-2014
//
// Last Modified By : zhujinrong
// Last Modified On : 08-14-2014
// ***********************************************************************
// <copyright file="DALFactory.cs" company="Microsoft">
//     Copyright (c) Microsoft. All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

namespace Com.Amy.Database
{
    /// <summary>
    /// 数据库访问工厂
    /// </summary>
    public class DALFactory
    {
        /// <summary>
        /// 获取人员信息数据访问层
        /// </summary>
        /// <returns>数据访问层</returns>
        public static IPerson GetPersonDao()
        {
            return new DPerson();
        }
    }
}
