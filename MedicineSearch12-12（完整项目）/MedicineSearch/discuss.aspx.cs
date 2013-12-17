using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineSearch
{
    public partial class discuss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (basicInf.getnickName ()== null)
            {
                Response.Redirect("login.aspx");                
            }
           
            string nickNameIn = basicInf.getnickName();
            lablenickname.ForeColor = System.Drawing.Color.Red;
            lablenickname.Text = basicInf.getnickName();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }
    }
}