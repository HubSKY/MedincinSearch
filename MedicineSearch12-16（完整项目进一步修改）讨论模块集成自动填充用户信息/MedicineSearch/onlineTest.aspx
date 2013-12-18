<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onlineTest.aspx.cs" Inherits="MedicineSearch.onlineTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>onlineTest</title>
   <link href="css/onLineTest.css" rel="stylesheet" type="text/css" />

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="medicin_search_container">
	
    <div id="medicin_search_banner">  <asp:Label ID="lablenickname" runat="server"></asp:Label></div>
    
    <div id="medicin_search_menu_search">
        <div id="medicin_search_menu">
            <ul>
               <li><a href="index.aspx">首页  </a></li>
                <li><a href="onlineTest.aspx">测试</a></li>
                <li><a href="download.aspx">课件</a></li>
                <li><a href="MYmessage.aspx">讨论</a></li>
                <li><a href="expriment.aspx" >实验</a></li>
                 <li><a href="personalInformationCenter.aspx">中心</a></li>
                <li><a href="about-us.aspx" class="last">关于</a></li>
            </ul>    	
        </div> <!-- end of menu -->
        
        <div id="search_section">
            <asp:TextBox ID="TextBox1" runat="server" Width="149px"></asp:TextBox>
            <asp:Button ID="searchText" runat="server" Text="搜索" OnClick="Button2_Click" Width="67px" /> 
        </div> 
        
        <div class="cleaner"></div>	
	</div>
    <div id="medicin_search_content">
    <p>
        <asp:Label ID="lableName" runat="server" Text="姓名："  style="margin-left:40px;font-size:20px;"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Label ID="lableTime" runat="server" Text=""> </asp:Label>
        <div id=test></div>
        </p>
         <asp:Panel ID="Panel1" runat="server" style="margin-left: 8px" Width="948px">
        </asp:Panel>
        <div>
         <asp:Button ID="Button1" runat="server" Text="提交" style="float:right;margin-right:20px " OnClick="Button1_Click"/>
         <asp:Button ID="Button2" runat="server" Text="答案" style="float:left" />
         </div>
        </div>
         <div id="medcine_footer">
        <ul class="footer_list">
            <li><a href="index.html" class="current">yangshuyuan</a></li>
            <li><a href="#">wuhengjin</a></li>
            <li><a href="#">hongwei</a></li>
            <li><a href="#">zhouqiong</a></li>
            <li class="last"><a href="#">gongguiwei</a></li>
        </ul> 
        </div>
</div>
        
        </form>
        <script>
            var alltime = 60;
            function setTime() {
                if (alltime <= 0) {
                    alert("时间到！");
                    clearInterval(s);
                }
                else {
                    alltime--;
                    m = Math.floor(alltime / 60);
                    se = Math.round(alltime - (Math.floor(alltime / 60) * 60));
                    test.innerText = "剩余" + m + "分" + se + "秒";
                }
            }
            s = setInterval("setTime()", 1000)
  </script>  
</body>
</html>
