using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineSearch
{
    public partial class iindex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string niackName = Request.QueryString["nickNamae"];
                string nickNameIn = basicInf.getnickName();
                if ((niackName != null) || nickNameIn != null)
                {
                    if (niackName != null)
                        basicInf.setnickName(niackName);

                    lablenickname.ForeColor = System.Drawing.Color.Red;
                    lablenickname.Text = basicInf.getnickName();
                    showlogin.Controls.Clear();
                }
            }
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + searchText.Text);
        }
    }
}