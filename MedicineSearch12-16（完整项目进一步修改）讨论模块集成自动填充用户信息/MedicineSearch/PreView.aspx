<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreView.aspx.cs" Inherits="MedicineSearch.PreView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TextPreView</title>
     <link href="css/Search2.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <form id="form1" runat="server">

   <div id="medicin_search_container">	
    <div id="medicin_search_banner">
        <asp:Label ID="lablenickname" runat="server"></asp:Label>
    </div>
    
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
               <asp:TextBox ID="TextBox1" runat="server" Width="141px"></asp:TextBox>
            <asp:Button ID="searchText" runat="server" Text="搜索" OnClick="Button2_Click" Width="60px" /> 
        </div> 
        
        <div class="cleaner"></div>	
	</div>
       <div id="medicin_search_content">      
       </div>
        
       <div id="medcine_footer">
        <ul class="footer_list">
            <li><a href="index.html" class="current">hongwei</a></li>
            <li><a href="#">wuhengjin</a></li>
            <li><a href="#">gongguiwei</a></li>
            <li><a href="#">yangshuyuan</a></li>
            <li class="last"><a href="#"> zhouqiong</a></li>
        </ul> 
</div>
  </div>

    </form>
</body>
</html>
