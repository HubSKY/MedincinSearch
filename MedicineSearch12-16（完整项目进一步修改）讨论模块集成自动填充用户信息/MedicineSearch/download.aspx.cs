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
    public partial class download : System.Web.UI.Page
    {
        SQLDataBase sqlBase = new SQLDataBase();
         
      
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (basicInf.getnickName() == null)
            {
                Response.Redirect("login.aspx");
            }
            string nickNameIn = basicInf.getnickName();            
            lablenickname.ForeColor = System.Drawing.Color.Red;
            lablenickname.Text = basicInf.getnickName();

            if (!IsPostBack)
            {
                classList();
            }

        }
        public void classList()
        {
            

            string sql1 = "select*from Courseware";
            SqlConnection con = sqlBase.GetCon();
            SqlCommand cmd = new SqlCommand(sql1,con);

            SqlDataAdapter da = new SqlDataAdapter(sql1, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind(); 
             con.Close();
           
            
        }
  
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            classList(); //重新绑定GridView数据的函数
        }

  
    }
}