using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineSearch
{
    public partial class expriment : System.Web.UI.Page
    {
        string nick;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (basicInf.getnickName() == null)
            {
                Response.Redirect("login.aspx");
            }

            string niackName = Request.QueryString["nickNamae"];
            string nickNameIn = basicInf.getnickName();
            if ((niackName != null)||nickNameIn!=null)
            {
                if (niackName!=null)
                    basicInf.setnickName(niackName);
                
                lablenickname.ForeColor = System.Drawing.Color.Red;
                lablenickname.Text = basicInf.getnickName();
                         
               
            }

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("SearchMedicine.aspx?key="+searchText.Text);
            
        }
    
    }
}