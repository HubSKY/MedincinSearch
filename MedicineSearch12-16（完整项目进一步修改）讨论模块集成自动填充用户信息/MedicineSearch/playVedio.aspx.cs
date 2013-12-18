using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineSearch
{
    public partial class playVedio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string Curlstring= Request.QueryString["Curl"].ToString();
           if (Curlstring.EndsWith(".doc"))
           {
               Response.Redirect("download.aspx?Curl=" + Curlstring);
           }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }
    }
}