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
    public partial class register : System.Web.UI.Page
    {
        SQLDataBase sqlBase = new SQLDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                checkName();
                checkPsw();
                if(checkName()==true&&checkPsw()==true)
                {
                    SqlConnection con = sqlBase.GetCon();

                    string sqll = "select top 1 Uno from Student order by registerTime desc";
                    DataTable dt = sqlBase.GetDs(sqll).Tables[0] as DataTable;
                    int last = Convert.ToInt32(dt.Rows[0].ItemArray[0]);
                    string newID = Convert.ToString(++last);                                               
                   // string sql = "insert into Student values('";
                    string nickname = textName.Text;
                    string psw = textPsw.Text;
                    string sex=textSex.Text;
                    string email = textEmail.Text;
                    string qq = textQQ.Text;
                    DateTime registerTime = DateTime.Now;
                  //  sql = sql + newID + "','" + nickname + "','" + psw + "','" + sex + "','" + email + "','" + qq +"','"+registerTime+ "')";
                   // sqlBase.GetExecute(sql);
                    //通过存储过程添加Student
                    
                    SqlCommand myCommand = new SqlCommand("AddStudent",con);
                    myCommand.CommandType = CommandType.StoredProcedure;//指明SQL命令操作类型是存储过程；

                    SqlParameter parameterUnoString = new SqlParameter("@UnoV",SqlDbType.NChar,20);//给存储过程添加参数
                    parameterUnoString.Value = newID;
                    myCommand.Parameters.Add(parameterUnoString);

                    SqlParameter parameterUnicknameString = new SqlParameter("@UnicknameV ", SqlDbType.NVarChar, 50);//给存储过程添加参数
                    parameterUnicknameString.Value = nickname;
                    myCommand.Parameters.Add(parameterUnicknameString);

                    SqlParameter parameterUpassWordString = new SqlParameter("UpasswordV", SqlDbType.NVarChar, 50);//给存储过程添加参数
                    parameterUpassWordString.Value = psw;
                    myCommand.Parameters.Add(parameterUpassWordString);

                    SqlParameter parameterUsexString = new SqlParameter("@UsexV ", SqlDbType.Char, 4);//给存储过程添加参数
                    parameterUsexString.Value = sex;
                    myCommand.Parameters.Add(parameterUsexString);

                    SqlParameter parameterUemailString = new SqlParameter("@UemailV", SqlDbType.NVarChar, 50);//给存储过程添加参数
                    parameterUemailString.Value = email;
                    myCommand.Parameters.Add(parameterUemailString);

                    SqlParameter parameterUqqString = new SqlParameter("@UqqV", SqlDbType.NVarChar, 50);//给存储过程添加参数
                    parameterUqqString.Value = qq;
                    myCommand.Parameters.Add(parameterUqqString);

                    SqlParameter parameterRegisterTime = new SqlParameter("@registerTimeV", SqlDbType.DateTime);//给存储过程添加参数
                    parameterRegisterTime.Value = registerTime;
                    myCommand.Parameters.Add(parameterRegisterTime);

                    myCommand.ExecuteNonQuery();

                    lableTip.Text = "注册成功请返回";
                    lableTip.ForeColor = System.Drawing.Color.Green;
                    


                }
            }
        }
        public Boolean checkName()
        {
            
            string name = textName.Text;
            if(name=="")
            {
                lableTip.Text= "用户名不能为空，请输入用户名";
                lableTip.ForeColor = System.Drawing.Color.Red;
                return false;
            }
            SqlConnection con = sqlBase.GetCon();
            string sql = "select * from Student where Unickname='" + name + "'";
            SqlCommand cmd = new SqlCommand(sql,con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                lableTip.Text = "该用昵称已经使用，请重新输入其他昵称";
                lableTip.ForeColor = System.Drawing.Color.Red;
                return false;
            }
            return true;
        }
        public Boolean checkPsw()
        {
            string psw=textPsw.Text;
            if (textPsw.Text != textSPsw.Text)
            {
                lableTip.Text = "两次密码不一致，请重新更正信息";
                lableTip.ForeColor = System.Drawing.Color.Red;
                return false;
            }
            else if (psw.Length < 6)
            {
                lableTip.Text = "密码位数太少";
                lableTip.ForeColor = System.Drawing.Color.Red;
                return false;

            }
            else
                return true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}