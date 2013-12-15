using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BitTC.CMS.DBConnection;
using System.Data;

namespace Message
{
    public partial class MYmessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //设置当前页码
            int currentPage;
            int.TryParse(Request["page"], out currentPage);
            if (currentPage <= 0) currentPage = 1;

            //设置留言板类型
            int mid;
            int.TryParse(Request["mid"], out mid);


            //设置分页条的相关参数：记录数RecordCount，当前页码CurrentPageIndex,页码大小PageSize;
            string partSql = string.Empty;
            Dictionary<string, object> p = new Dictionary<string, object>();
            if (mid != 0)
            {
                partSql = " where disscusstotalID=@mid ";
                p.Add("@mid", mid);
            }
            string sql = "select count(*) from disscuss " + partSql;
           
            int recordCount = int.Parse(SqlHelper.ExecuteScalar(sql, p).ToString());
            this.AspNetPager1.RecordCount = recordCount;
            this.AspNetPager1.CurrentPageIndex = currentPage;
            this.AspNetPager1.PageSize = 2;

            //设置Repeater数据控件的数据源
            sql = @"select * 
                    from (
                          SELECT ROW_NUMBER() OVER (ORDER BY ID DESC) AS 
                                 RowNo,*
                          FROM 
                             (
                              SELECT * 
                              FROM [disscuss]
                              " + partSql + @"
                              ) AS t1      
                          ) AS t2
                    where RowNo>@pageSize*(@currentPage-1) and RowNo<=@pageSize*@currentPage";
            p.Add("@pageSize", this.AspNetPager1.PageSize);
            p.Add("@currentPage", currentPage);

            DataTable dt = SqlHelper.GetDataTable(sql, p);
            this.rptMessage.DataSource = dt;
            this.rptMessage.DataBind();
        }

        protected void rptMessage_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Repeater r = e.Item.FindControl("rptdisscussreply") as Repeater;//找到内层的Repeater控件
            DataRowView item = e.Item.DataItem as DataRowView;//获得当前外层Repeater控件的当前数据条目Item

            string sql = "select top 3 * from disscussreply where disscussID=@disscussID order by ID desc";
            Dictionary<string, object> p = new Dictionary<string, object>();
            p.Add("@disscussID", item["ID"]);

            r.DataSource = SqlHelper.GetDataTable(sql, p);
            r.DataBind();
        }
    }
}