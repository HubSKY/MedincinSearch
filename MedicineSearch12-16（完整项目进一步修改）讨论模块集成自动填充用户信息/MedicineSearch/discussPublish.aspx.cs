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
using System.Data.SqlClient;

namespace MedicineSearch
{
    public partial class discussPublish : System.Web.UI.Page
    {
        SQLDataBase sqlBase = new SQLDataBase();
        
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
                string nickname = basicInf.getnickName();
                SqlConnection con = sqlBase.GetCon();
                string sql = "select * from Student where Unickname='" + nickname + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    tbregisternumber.Text = sdr["Uno"].ToString().Trim();
                    tbPetName.Text = sdr["Unickname"].ToString().Trim();
                    //  textPsw.Text = sdr["Upassword"].ToString();
                    tbQQ.Text = sdr["Uqq"].ToString();
                    if (sdr["Usex"].ToString().Trim()=="男") 
                    {
                        rblGender.SelectedIndex= 0;
                    }
                    else
                    {
                        rblGender.SelectedIndex = 1;

                    }
                    tbEmail.Text = sdr["Uemail"].ToString().Trim();
                    ddlMessageType.SelectedIndex = 1;
                  
                }
                
            }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ButtClick(object sender, EventArgs e)
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