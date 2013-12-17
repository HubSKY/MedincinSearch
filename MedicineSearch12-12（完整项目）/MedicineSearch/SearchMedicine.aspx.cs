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
    public partial class SearchMedicine : System.Web.UI.Page
    {
        SQLDataBase sqlBase = new SQLDataBase();
        PagedDataSource pds = new PagedDataSource();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dataListBind();
            }

        }
        public void dataListBind()
        {
            string keyValue = Request.QueryString["key"];//

           // ="select * from 数据表 where字段名like '%字段值%' order by 字段名 [desc]"

           
            int currentPage = Convert.ToInt32(lableCurrentPage.Text);
            SqlConnection con = sqlBase.GetCon();
            string sqlstring = "select * from MedicinalHerbs where Mname like '%"+keyValue+"%'";
            DataSet ds = sqlBase.GetDs(sqlstring);
            SqlDataReader P_tr = sqlBase.GetReader(sqlstring);

            string sqlstring1 = "select * from MedicinalHerbs where Mdescribe like '%" + keyValue + "%'";
            DataSet ds1 = sqlBase.GetDs(sqlstring1);
            SqlDataReader P_tr1 = sqlBase.GetReader(sqlstring1);
            if (P_tr.HasRows)
            {
               
                SqlDataAdapter sda = new SqlDataAdapter(sqlstring, con);
                sda.Fill(ds, "MedicinalHerbs");
                pds.DataSource = ds.Tables["MedicinalHerbs"].DefaultView;
            }
            else if (P_tr1.HasRows)
            {
                
                SqlDataAdapter sda = new SqlDataAdapter(sqlstring1, con);
                sda.Fill(ds1, "MedicinalHerbs");
                pds.DataSource = ds1.Tables["MedicinalHerbs"].DefaultView;


            }
          

           
            pds.AllowPaging = true;
            pds.PageSize = 10;
            pds.CurrentPageIndex = currentPage - 1;
            int sumPages = pds.PageCount;
            lableSumpage.Text = Convert.ToString(sumPages);
            upButton.Visible = true;
            downButton.Visible = true;
            firstButton.Visible = true;
            lastButton.Visible = true;
            lableSumpage.Text = Convert.ToString(sumPages);
            DataList1.DataSource = pds;
            DataList1.DataKeyField = "Mno";
            DataList1.DataBind();
            con.Close();

 
        }

        protected void upButton_Click(object sender, EventArgs e)
        {
            if (pds.CurrentPageIndex == 0)
            {
                return;
            }
            
            lableCurrentPage.Text = Convert.ToString(Convert.ToInt32(lableCurrentPage.Text) - 1);
            dataListBind();
        }

        protected void downButton_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32( lableCurrentPage.Text )== pds.Count+1)
            {
                return;
            }

            lableCurrentPage.Text = Convert.ToString(Convert.ToInt32(lableCurrentPage.Text) + 1);
            dataListBind();
        }

        protected void firstButton_Click(object sender, EventArgs e)
        {
            lableCurrentPage.Text = "1";
            dataListBind();
        }

        protected void lastButton_Click(object sender, EventArgs e)
        {
            lableCurrentPage.Text = lableSumpage.Text;
            dataListBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }
    }
}