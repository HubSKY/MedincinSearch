using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace MedicineSearch
{
    public class SQLDataBase
    {
        SqlDataAdapter G_Da;
        DataSet G_Ds;
        SqlCommand G_com;

        string G_Str_Connection = "SERVER=(local);DATABASE=MedicineSearch;UID=zhouqiong;PWD=zhouqiong";

        SqlConnection G_Con;

        public SqlConnection GetCon()
        {
            G_Con = new SqlConnection(G_Str_Connection);
            G_Con.Open();
            return G_Con;
        }
        public bool GetExecute(string cmdtxt)
        {
            G_com = new SqlCommand(cmdtxt, GetCon());
            try
            {
                G_com.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {

                return false;
            }
            finally
            {
                if (GetCon().State == ConnectionState.Open)
                {
                    GetCon().Close();
                    GetCon().Dispose();
                }
            }
        }
        public DataSet GetDs(string cmdtxt)
        {
            try
            {
                G_Da = new SqlDataAdapter(cmdtxt, GetCon());
                G_Ds = new DataSet();
                G_Da.Fill(G_Ds);
                return G_Ds;

            }
            catch (Exception ex)
            {

                return null;

            }
            finally
            {
                if (GetCon().State == ConnectionState.Open)
                {
                    GetCon().Close();
                    GetCon().Dispose();
                }
            }
        }


        //本方法返回一个SqlDataReader的对象，完成从数据库中读取指定条件的数据
        public SqlDataReader GetReader(string cmdtxt)
        {
            G_com = new SqlCommand(cmdtxt, GetCon());
            SqlDataReader P_Dr;
            try
            {
                P_Dr = G_com.ExecuteReader();
                return P_Dr;
            }
            catch (Exception ex)
            {

                return null;

            }
            finally
            {
                if (GetCon().State == ConnectionState.Open)
                {
                    GetCon().Close();
                    GetCon().Dispose();
                }
            }
        }
    }
}