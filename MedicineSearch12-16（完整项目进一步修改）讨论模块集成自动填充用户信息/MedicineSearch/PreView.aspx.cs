/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Word = Microsoft.Office.Interop.Word;

namespace MedicineSearch
{
    public partial class PreView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string filename =   Request.QueryString["Curl"];
            StreamReader fread = new StreamReader(filename, System.Text.Encoding.GetEncoding("gb2312"));
            string ss = fread.ReadToEnd();
            Response.Write(ss);
            fread.Close();
            fread.Dispose();
        }
        private string WordToHtml(object wordFileName)
        {
            //在此处放置用户代码以初始化页面 
            Word.Application word = new Word.Application();
            Type wordType = word.GetType();
            Word.Documents docs = word.Documents;
            //打开文件 
            Type docsType = docs.GetType();
            Word.Document doc = (Word.Document)docsType.InvokeMember("Open", System.Reflection.BindingFlags.InvokeMethod, null, docs, new Object[] { wordFileName, true, true });
            //转换格式，另存为 
            Type docType = doc.GetType();
            string wordSaveFileName = wordFileName.ToString();
            string strSaveFileName = wordSaveFileName.Substring(0, wordSaveFileName.Length - 3) + "html";
            object saveFileName = (object)strSaveFileName;
            docType.InvokeMember("SaveAs", System.Reflection.BindingFlags.InvokeMethod, null, doc, new object[] { saveFileName, Word.WdSaveFormat.wdFormatFilteredHTML });
            docType.InvokeMember("Close", System.Reflection.BindingFlags.InvokeMethod, null, doc, null);
            //退出 Word 
            wordType.InvokeMember("Quit", System.Reflection.BindingFlags.InvokeMethod, null, word, null);
            return saveFileName.ToString();
        } 


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchMedicine.aspx?key=" + TextBox1.Text);
        }
    }
}*/