using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BitTC.CMS.DBConnection;
using System.Data;

namespace MedicineSearch
{
    public partial class disscussreply : System.Web.UI.Page
    {
        public string Unickname;
        public string Usex;
        public string Uqq;
        public string IP;
        public string Uemail;
        public string address;
        public int disscussID;
        public string content;
        public string postime;
        public string phonnumber;
        public string registernumber;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request["mid"]))
            {
                Response.End();
            }

            if (Session["LoginName"] != null)
            {
                this.tbUnickname.Text = Session["LoginName"].ToString();
            }

            int.TryParse(Request["mid"], out disscussID);


            //根据获的mid查询出对应的留言信息，以方便显示到留言回复网页上
            string sql = "select * from disscuss where id=@mid";
            Dictionary<string, object> p = new Dictionary<string, object>() { { "@mid", disscussID } };
            DataTable dt = SqlHelper.GetDataTable(sql, p);
            Unickname = dt.Rows[0]["Unickname"].ToString();
            Usex = dt.Rows[0]["Usex"].ToString();
            Uqq = dt.Rows[0]["Uqq"].ToString() == "" ? "保密" : dt.Rows[0]["Uqq"].ToString();
            Uemail = dt.Rows[0]["Uemail"].ToString() == "" ? "保密" : dt.Rows[0]["Uemail"].ToString();
            IP = dt.Rows[0]["IP"].ToString();
            address = dt.Rows[0]["address"].ToString() == "" ? "保密" : dt.Rows[0]["address"].ToString();
            content = dt.Rows[0]["content"].ToString();
            postime = string.Format("{0:F}", dt.Rows[0]["postime"]);


            //设置当前页码
            int currentPage;
            int.TryParse(Request["page"], out currentPage);
            if (currentPage <= 0) currentPage = 1;

            //设置分页条的相关参数：记录数RecordCount，当前页码CurrentPageIndex,页码大小PageSize;
            sql = "select count(*) from disscussreply where disscussID=@mid ";
            int recordCount = int.Parse(SqlHelper.ExecuteScalar(sql, p).ToString());
            this.AspNetPager1.RecordCount = recordCount;
            this.AspNetPager1.CurrentPageIndex = currentPage;
            this.AspNetPager1.PageSize = 2;

            //设置数据控件Repeater的数据源
            sql = "select * from  (select Row_Number() over (order by ID desc) as RowNo,* from (select * from disscussreply where disscussID=@mid) as t1) as t2 where RowNo>@pageSize*(@currentPage-1) and RowNo<=@pageSize*@currentPage";
            p.Add("@pageSize", this.AspNetPager1.PageSize);
            p.Add("@currentPage", currentPage);
            this.rptdisscussreply.DataSource = SqlHelper.GetDataTable(sql, p);
            this.rptdisscussreply.DataBind();

            tbUnickname.Text = basicInf.getnickName();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.IsValid != true)
            {
                return;
            }

            string sql = @"INSERT INTO [dbo].[disscussreply]
                             ([Unickname]
                            ,[replytime]
                            ,[content]
                            ,[disscussID]
                            ,[isadmin])
                  VALUES
                              (@Unickname
                            ,@replytime
                            ,@content
                            ,@disscussID
                            ,@isadmin)";
            Dictionary<string, object> p = new Dictionary<string, object>();
            p.Add("@Unickname", this.tbUnickname.Text.Replace(" ", ""));
            p.Add("@replytime", DateTime.Now);
            p.Add("@content", this.tbcontent.Text);
            p.Add("@disscussID", disscussID);
            if (Session["IsValid"] != null)
            {
                p.Add("@IsAdmin", true);
            }
            else
            {
                p.Add("@IsAdmin", false);
            }
            SqlHelper.ExecuteNonQuery(sql, p);
            Response.Redirect("MYmessage.aspx");
        }

        protected void Btnn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }


    }
}