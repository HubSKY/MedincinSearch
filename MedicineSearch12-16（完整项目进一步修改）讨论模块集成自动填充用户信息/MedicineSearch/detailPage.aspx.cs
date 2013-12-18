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
    public partial class detailPage : System.Web.UI.Page
    {
        SQLDataBase sqlBase = new SQLDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getDetailIformation();
            }

        }
        public void getDetailIformation()
        {
            string keyValue = Request.QueryString["Mno"];
            string sqlstring = "select * from MedicinalHerbs where Mno = '" + keyValue + "'";
            DataSet ds = sqlBase.GetDs(sqlstring);
            SqlConnection con = sqlBase.GetCon();
            SqlCommand cmd = new SqlCommand(sqlstring, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                lableName.Text = sdr["Mname"].ToString();
                lableCatagory.Text = sdr["Mcategory"].ToString();
                lableTast.Text = sdr["Mtaste"].ToString();
                lableFunction.Text = sdr["Mfunction"].ToString();
                lableDetailIntro.Text = sdr["MdetailIntro"].ToString();
                Image1.ImageUrl=sdr["Mpicture"].ToString().Trim();
               
            }
            sdr.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (basicInf.getnickName() == null)
            {
                Response.Redirect("login.aspx");
            }
            else 
            {
                              
                string sql = "select Uno from Student where  Unickname='" + basicInf.getnickName().ToString().Trim() + "'";
                string sqll = "select Mno  from MedicinalHerbs where Mname='" + lableName.Text.ToString().Trim()+"'";
                SqlConnection con = sqlBase.GetCon(); 
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

                string sql3 = "select * from Collection where Uno='"+Unostring+"' and Mno='"+Mnostring+"'";
                SqlCommand cmd3 = new SqlCommand(sql3, con);
                SqlDataReader sdr3 = cmd3.ExecuteReader();
                if (sdr3.HasRows)
                {
                    string s1= "该药材已经在收藏夹中";
                    this.ImageButton1.Attributes.Add("onclick", "return confirm('该药材已经在收藏夹中')");
                    return;
                }

                else
                {
                    DateTime now = DateTime.Now;

                    string sql2 = "insert into Collection values ('" + Unostring + "','" + Mnostring + "','" + now + "')";
                    sqlBase.GetExecute(sql2);
                }


            }
        }
    }
}