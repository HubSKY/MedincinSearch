using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MedicineSearch
{
    public partial class onlineTest : System.Web.UI.Page
    {
        public string Ans = null;
        public int tNUM;
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

            int i = 1;
            SqlConnection con = sqlBaseClass.GetCon();
            // con.Open();
            SqlCommand cmd = new SqlCommand("select top 5 * from OnlineTest order by newid()", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                Literal littex = new Literal();
                Literal litti = new Literal();
                Literal ltAnswer = new Literal();
                RadioButtonList cbk = new RadioButtonList();
                cbk.ID = "cbk" + i.ToString();
                littex.Text = "    "+i.ToString() + "、" + Server.HtmlEncode(sdr["testContent"].ToString()) + "<br></ckqoute>";
                litti.Text = "</Blockquote>";
                cbk.Items.Add("    A." + Server.HtmlEncode(sdr["TestAnls"].ToString()));
                cbk.Items.Add("    B." + Server.HtmlEncode(sdr["TestBnls"].ToString()));
                cbk.Items.Add("    C." + Server.HtmlEncode(sdr["TestCnls"].ToString()));
                cbk.Items.Add("    D." + Server.HtmlEncode(sdr["TestDnls"].ToString()));
                ltAnswer.Text = "正确答案为："+Server.HtmlEncode(sdr["RightAnswer"].ToString()) + "  解释：" + Server.HtmlEncode(sdr["Explain"].ToString())+"<br><br>";
                ltAnswer.ID = "ltAnswer" + i.ToString();
                ltAnswer.Visible = false;
                cbk.Font.Size = 11;
                for (int j = 0; j < 4; j++)
                {
                    cbk.Items[j].Value = (j + 1).ToString();
                }
                Ans += sdr[6].ToString();
                if (Session["a"] == null)
                {
                    Session["Ans"] = Ans;
                }
                Panel1.Controls.Add(littex);
                Panel1.Controls.Add(cbk);
                Panel1.Controls.Add(litti);
                Panel1.Controls.Add(ltAnswer);
                i++;
                tNUM++;

            }
            sdr.Close();
            con.Close();
            Button2.Visible = false;
            Session["a"] = 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button2.Visible = true;
            for (int i = 0; i < 5; i++)
            {
                Literal littAnswer = (Literal)Panel1.FindControl("ltAnswer" + (i + 1).ToString());
                littAnswer.Visible=true;
               
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }
    }
}