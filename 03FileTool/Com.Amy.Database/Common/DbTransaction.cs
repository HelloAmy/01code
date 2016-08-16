// ***********************************************************************
// Assembly         : Com.Amy.Database
// Author           : zhujinrong
// Created          : 08-15-2014
//
// Last Modified By : zhujinrong
// Last Modified On : 08-15-2014
// ***********************************************************************
// <copyright file="DbTransaction.cs" company="Microsoft">
//     Copyright (c) Microsoft. All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System.Data;
using System.Data.OleDb;
using System;

namespace Com.Amy.Database
{
    /// <summary>
    /// 事物抽象类
    /// </summary>
    public abstract class ExcelDbTransaction
    {
        /// <summary>
        /// 数据库连接
        /// </summary>
        private OleDbConnection connection;

        /// <summary>
        /// 事物
        /// </summary>
        private OleDbTransaction transtion;

        /// <summary>
        /// 是否开始事物
        /// </summary>
        private bool isbeginTransation;

        /// <summary>
        /// 事物锁定行为
        /// </summary>
        private IsolationLevel isolationLevel;

        /// <summary>
        /// 构造方法
        /// </summary>
        public ExcelDbTransaction()
        {
            this.IsolationLevel = System.Data.IsolationLevel.ReadCommitted;
        }

        /// <summary>
        /// 构造方法
        /// </summary>
        /// <param name="conn">数据库连接</param>
        public ExcelDbTransaction(OleDbConnection conn)
        {
            this.connection = conn;
            this.IsolationLevel = System.Data.IsolationLevel.ReadCommitted;
        }

        /// <summary>
        /// 连接
        /// </summary>
        protected OleDbConnection Connection
        {
            get { return this.connection; }
            set { this.connection = value; }
        }

        /// <summary>
        /// 事物
        /// </summary>
        protected OleDbTransaction Transation
        {
            get { return this.transtion; }
            set { this.transtion = value; }
        }

        /// <summary>
        /// 锁定方式
        /// </summary>
        protected IsolationLevel IsolationLevel
        {
            get { return this.isolationLevel; }
            set { this.isolationLevel = value; }
        }

        /// <summary>
        /// 是否开始执行事物
        /// </summary>
        protected bool IsBeginTransation
        {
            get { return this.isbeginTransation; }
            set { this.isbeginTransation = value; }
        }

        /// <summary>
        /// 执行事物
        /// </summary>
        public void Execute()
        {
            try
            {
                this.connection.Open();
                if (this.isbeginTransation)
                {
                    this.transtion = this.connection.BeginTransaction(this.isolationLevel);
                }

                this.ExecuteMethod();
                if (this.transtion != null)
                {
                    this.transtion.Commit();
                }
            }
            catch
            {
                if (this.transtion != null)
                {
                    this.transtion.Rollback();
                }
            }
            finally
            {
                if (this.transtion != null)
                {
                    this.transtion.Dispose();
                }

                if (this.connection != null && this.connection.State == ConnectionState.Open)
                {
                    this.connection.Close();
                }
            }
        }

        /// <summary>
        /// 执行方法
        /// </summary>
        protected abstract void ExecuteMethod();
    }
}
