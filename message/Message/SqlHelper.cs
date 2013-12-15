using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace BitTC.CMS.DBConnection
{ 
    public class SqlHelper
    {
        #region 数据插入、删除、修改
        /// <summary>
        /// 通用的函数，能完成插入、删除和修改操作，通过传入的sql语句区分操作类型
        /// </summary>
        /// <param name="sql">传入的sql语句</param>
        /// <param name="parameters">参数</param>
        /// <returns>true：表示插入成功；false：表示插入失败</returns>
        public static bool ExecuteNonQuery(string sql, Dictionary<string, object> parameters)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = sql;
                if (parameters != null)
                {
                    foreach (var item in parameters)
                    {
                        cmd.Parameters.AddWithValue(item.Key, item.Value);
                    }
                }
                cmd.ExecuteNonQuery();//返回受影响的行数
                return true; //return cmd.ExecuteNonQuery()>0;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }

        #endregion

        /// <summary>
        /// 通用的函数，能完成插入、删除和修改操作，通过传入的sql语句区分操作类型
        /// </summary>
        /// <param name="sql">传入的sql语句</param>
        /// <param name="parameters">参数</param>
        /// <returns>true：表示插入成功；false：表示插入失败</returns>
        public static bool ExecuteNonQuerySimple(string sql, Dictionary<string, object> parameters)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString);
            try
            {
                //con.ConnectionString = ConfigurationManager.ConnectionStrings["MSSQLWinConnStr"].ConnectionString;
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(sql, con);
                //cmd.Connection = con;
                //cmd.CommandText = sql;
                cmd.CommandType = System.Data.CommandType.Text;//执行基本sql或视图

                /*  操作存储过程
                 *  cmd.CommandType = System.Data.CommandType.StoredProcedure;
                 *  cmd.CommandText = "存储过程名";
                 * */

                if (parameters != null)
                {
                    foreach (var item in parameters)
                    {
                        cmd.Parameters.AddWithValue(item.Key, item.Value);
                    }
                }
                cmd.ExecuteNonQuery();//返回受影响的行数
                return true; //return cmd.ExecuteNonQuery()>0;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }

        #region 返回首行首列的值
        /// <summary>
        /// 通用的函数，返回查询结果表中首行首列的值
        /// </summary>
        /// <param name="sql">传入的sql语句</param>
        /// <param name="parameters">参数</param>
        /// <returns>首行首列的值</returns>
        public static object ExecuteScalar(string sql, Dictionary<string, object> parameters)
        {
            using (SqlConnection con = new SqlConnection())
            {
                //try
                //{
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = sql;
                    if (parameters != null)
                    {
                        foreach (var item in parameters)
                        {
                            cmd.Parameters.AddWithValue(item.Key, item.Value);
                        }
                    }
                    object r = cmd.ExecuteScalar();//返回查询结果表中首行首列的值
                    return r;
                //}
                //catch (Exception)
                //{
                //    throw;
                //}
                //finally 如果使用using来定义con的话，到using执行完后，con自动关闭，不用在写con.Close();
                //{
                //    if (con.State == System.Data.ConnectionState.Open)
                //    {
                //        con.Close();
                //    }
                //}
            }
        }
        #endregion 

        #region 使用阅读器或适配器查询数据
        /// <summary>
        /// 通过阅读器阅读数据
        /// </summary>
        /// <param name="sql">传入的sql语句</param>
        /// <param name="parameters">参数</param>
        /// <returns>阅读器</returns>
        public static SqlDataReader ExecuteReader(string sql, Dictionary<string, object> parameters)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
                if (con.State == System.Data.ConnectionState.Closed) con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = sql;//查询所有的学生详细信息
                if (parameters != null)
                {
                    foreach (var item in parameters)
                    {
                        cmd.Parameters.AddWithValue(item.Key, item.Value);
                    }
                }
                cmd.Connection = con;

                SqlDataReader dr = cmd.ExecuteReader();//阅读器对象dr指向了Student表的表头，还不知道是否有数据 
                return dr;
            }
            catch (Exception)
            {
                throw;
            }
            //finally 如果关闭数据库，则阅读器没有办法读取数据;
            //{
            //    if (con.State == System.Data.ConnectionState.Open)
            //    {
            //        con.Close();
            //    }
            //}           
        }

        /// <summary>
        /// 通过适配器查询，返回一个数据集市
        /// </summary>
        /// <param name="sql">传入的Sql语句</param>
        /// <param name="parameters">参数</param>
        /// <returns>执行成功，返回数据集市；失败返回null</returns>
        public static DataSet GetDataSet(string sql, Dictionary<string, object> parameters)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;

                //if (con.State== System.Data.ConnectionState.Closed)适配器会根据具体需要打开和关闭数据库
                //{
                //    con.Open();
                //}

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = sql;
                cmd.CommandType = System.Data.CommandType.Text;
                if (parameters != null)
                {
                    foreach (var item in parameters)
                    {
                        cmd.Parameters.AddWithValue(item.Key, item.Value);
                    }
                }

                SqlDataAdapter da = new SqlDataAdapter();//创建一个适配器,它会根据具体需要打开和关闭数据库
                da.SelectCommand = cmd;

                DataSet ds = new DataSet();//创建一个数据集市
                da.Fill(ds, "Stu"); //适配器将查询出来的数据填充到数据集市ds中去

                return ds;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static DataTable GetDataTable(string sql, Dictionary<string, object> parameters)
        {
            /*最最最简洁的写法
             * DataTable dt = SqlHelper.GetDataSet(sql, parameters).Tables[0];
             * return dt;
             */

            SqlConnection con = new SqlConnection();
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;

                //if (con.State== System.Data.ConnectionState.Closed)适配器会根据具体需要打开和关闭数据库
                //{
                //    con.Open();
                //}

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = sql;
                cmd.CommandType = System.Data.CommandType.Text;
                if (parameters != null)
                {
                    foreach (var item in parameters)
                    {
                        cmd.Parameters.AddWithValue(item.Key, item.Value);
                    }
                }

                SqlDataAdapter da = new SqlDataAdapter();//创建一个适配器,它会根据具体需要打开和关闭数据库
                da.SelectCommand = cmd;

                DataTable dt = new DataTable();
                da.Fill(dt);
               
                return dt;
            }
            catch (Exception)
            {
                throw;
            }
        }
        #endregion
    }
}