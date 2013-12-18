using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MedicineSearch
{
    public partial class personalInformationCenter : System.Web.UI.Page
    {
        public SQLDataBase sqlBaseClass = new SQLDataBase();
      
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (basicInf.getnickName() == null)
            {
                Response.Redirect("login.aspx");
            }

            string nickNameIn = basicInf.getnickName();
            lablenickname.ForeColor = System.Drawing.Color.Red;
            lablenickname.Text = basicInf.getnickName();


            string nickname=basicInf.getnickName();
            SqlConnection con = sqlBaseClass.GetCon();
            string sql = "select * from Student where Unickname='" + nickname + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                textName.Text = sdr["Unickname"].ToString();
              //  textPsw.Text = sdr["Upassword"].ToString();
                textQQ.Text = sdr["Uqq"].ToString();
                textSex.Text = sdr["Usex"].ToString();
                textEmail.Text = sdr["Uemail"].ToString();
                textName.Text = nickname;
            }

            
           
                BindConnection();
           


        }
        protected void BindConnection()
        {

            SqlConnection con = sqlBaseClass.GetCon();
        //    string sql3 = "select 姓名,类别,书名,类型,作者,借阅时间,状态 from 借书表,图书表,读者表 where 读者表.读者编号=借书表.读者编号 and 借书表.图书编号=图书表.图书编号 and 借书表.读者编号='" + readerID + "'";
            string sql = "select Mname, MedicinalHerbs.Mno from Collection,MedicinalHerbs,Student where Collection.Uno=Student.Uno and MedicinalHerbs.Mno=Collection.Mno and Student.Unickname='"+basicInf.getnickName().ToString().Trim()+"'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            DataList1.DataSource = sdr;
            DataList1.DataBind();
            sdr.Close();
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            textName.Enabled = true;
            textQQ.Enabled = true;
            textSex.Enabled = true;
            textEmail.Enabled = true;
            textPsw.Enabled = true;
            SqlConnection con = sqlBaseClass.GetCon();
            string sql1 = "select * from Student where Unickname='" + textName.Text + "'";
            SqlCommand cmd = new SqlCommand(sql1, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            basicInf.setUnoo(sdr["Uno"].ToString());
            sdr.Close();


            textPsw.Text ="";
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            textName.Enabled = false;
            textQQ.Enabled = false;
            textSex.Enabled = false;
            textEmail.Enabled = false;
            textPsw.Enabled = false;
            string nickname = textName.Text;
            string psw = textPsw.Text;
            string sex = textSex.Text;
            string email = textEmail.Text;
            string qq = textQQ.Text;
            string Unoo1 = basicInf.getUnoo();
            string sql = "update Student set Unickname='"+nickname+"',Upassword='"+psw+"',Usex='"+sex+"',Uemail='"+email+"',Uqq='"+qq+"' where Uno='"+Unoo1+"'";
            sqlBaseClass.GetExecute(sql);
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" +TextBox1.Text);
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            //string Rname = ((TextBox)e.Item.FindControl("User_Rname")).Text.Trim();//
            string MnameV = ((Label)e.Item.FindControl("MnameV")).Text.ToString().Trim();

            string sql = "select Uno from Student where  Unickname='" + basicInf.getnickName().ToString().Trim() + "'";
            string sqll = "select Mno  from MedicinalHerbs where Mname='" + MnameV + "'";
            SqlConnection con = sqlBaseClass.GetCon();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            string Unostring = sdr["Uno"].ToString().Trim();
            sdr.Close();

            SqlCommand cmd1 = new SqlCommand(sqll, con);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            sdr1.Read();
            string Mnostring = sdr1["Mno"].ToString().Trim();
            sdr1.Close();
        //    string id = this.DataList1.DataKeys[e.Item.ItemIndex].ToString(); //使用前需先设置DataList的DataKeyField="Uid"
            string sql4 = "delete from Collection where Uno='" + Unostring + "' and Mno='"+Mnostring+"'";
            sqlBaseClass.GetExecute(sql4);

            BindConnection();
          
           // GetUserList();
        }


    }
}