using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace MedicineSearch
{
    public partial class login : System.Web.UI.Page
    {
        SQLDataBase sqlBase = new SQLDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nickName = textName.Text;
            string psw = textPsw.Text;
            string sql = "select * from Student where Unickname='" + nickName + "'AND Upassword='"+psw+"'";
            DataSet ds = sqlBase.GetDs(sql);
            SqlDataReader sdr= sqlBase.GetReader(sql);
              if (sdr.HasRows)
              {
                    lableTips.Text = "登录成功";
                    Response.Redirect("index.aspx?nickNamae=" + nickName);


                }
                else
                {
                    lableTips.ForeColor = System.Drawing.Color.Red;
                    lableTips.Text = "密码错误或用户名错误！";
                }

           
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}