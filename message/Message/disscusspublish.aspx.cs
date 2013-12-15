using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BitTC.CMS.DBConnection;
using System.Data;
using System.Data.Common;
using Message.Helper;
using System.Net;
namespace Message
{
    public partial class disscusspublish : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Session["LoginName"] != null)
                {
                    this.tbPetName.Text = Session["LoginName"].ToString();
                }

                Common.DataBindToDropDownList(this.ddlMessageType, SqlHelper.GetDataTable("select * from disscusstotal", null));
                //this.tbIP.Text = Request.UserHostAddress;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.IsValid != true)
            {
                return;
            }

            string sql = @"INSERT INTO [disscuss]
           ([Unickname]
           ,[Uqq]
           ,[address]
           ,[IP]
           ,[Usex]
           ,[phonnumber]
           ,[registernumber]
           ,[content]
           ,[Uemail]
           ,[disscusstotalID])
     VALUES
          (@Unickname
           ,@Uqq
           ,@address
           ,@IP
           ,@Usex
           ,@phonnumber
           ,@registernumber
           ,@content
           ,@Uemail
           ,@disscusstotalID)";
            Dictionary<string, object> p = new Dictionary<string, object>();
            p.Add("@Unickname", this.tbPetName.Text.Replace(" ", ""));

            if (this.rblGender.SelectedValue == string.Empty)
            {
                p.Add("@Usex", DBNull.Value);
            }
            else
            {
                p.Add("@Usex", this.rblGender.SelectedValue);
            }

            string hostname = Dns.GetHostName();
            IPHostEntry localhost = Dns.GetHostEntry(hostname);

            System.Net.IPAddress addr = new System.Net.IPAddress(Dns.GetHostByName(hostname).AddressList[0].Address);
            p.Add("@Uqq", this.tbQQ.Text);
            p.Add("@phonnumber", this.tbphonnumber.Text);
            p.Add("@registernumber", this.tbregisternumber.Text);
            p.Add("@Uemail", this.tbEmail.Text.Replace(" ", ""));
            p.Add("@address", this.tbAddress.Text.Replace(" ", ""));
            p.Add("@IP", addr.ToString());
            p.Add("@content", this.tbContent.Text);
            p.Add("@disscusstotalID", this.ddlMessageType.SelectedValue);

            SqlHelper.ExecuteNonQuery(sql, p);

            Response.Redirect("MYmessage.aspx");
        }
    }
}