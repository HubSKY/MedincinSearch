using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;

namespace Message.Helper
{
    public class Common
    {
        /// <summary>
        /// 然会加密以后字符串
        /// </summary>
        /// <param name="source">源串</param>
        /// <returns>机密后的密文</returns>
        public static string SHA1(string source)
        {
            string target = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(source, "SHA1");
            return target;
        }
        /// <summary>
        /// 将DataTable中的数据绑定到DropDownList控件中
        /// </summary>
        /// <param name="ddl">DropDownList控件</param>
        /// <param name="dt">DataTable数据源</param>
        /// <param name="textColumnName">条目中Text属性绑定的列名</param>
        /// <param name="valueColumnName">条目中Value属性绑定的列名</param>
        /// <param name="selectedValue">应该被选中的值</param>
        /// <param name="isHaveTip">是否有提示条目，如“请选择....”</param>
        /// <param name="tipItemText">提示条目文本</param>
        /// <param name="tipItemValue">提示条目值</param>
        public static void DataBindToDropDownList(DropDownList ddl, DataTable dt, string selectedValue = "", string textColumnName = "Name", string valueColumnName = "ID", bool isHaveTip = true, string tipItemText = "请选择....", string tipItemValue = "")
        {
            //从数据表InfoType中读取已经存在的数据，填充到ddlParent下拉控件中           
            ddl.Items.Clear();
            if (isHaveTip)
            {
                ddl.Items.Add(new ListItem(tipItemText, tipItemValue));
            }
            foreach (DataRow row in dt.Rows)
            {
                ListItem li = new ListItem(row[textColumnName].ToString(), row[valueColumnName].ToString());
                ddl.Items.Add(li);
            }

            foreach (ListItem item in ddl.Items)
            {
                if (item.Text== selectedValue)
                {
                    item.Selected = true;
                    break;
                }
            }
        }
    }
 }
