<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="wangye.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
        <title>personalInformationCenter</title>
    <link href="css/personalInformationCenter.css" rel="stylesheet" type="text/css" />
     <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="medicin_search_container" runat="server">
	
    <div id="medicin_search_banner">  <asp:Label ID="lablenickname" runat="server"></asp:Label></div>
    
    <div id="medicin_search_menu_search">
        <div id="medicin_search_menu">
            <ul>
               <li><a href="index.aspx">首页  </a></li>
                <li><a href="onlineTest.aspx">测试</a></li>
                <li><a href="download.aspx">课件</a></li>
                <li><a href="discuss.aspx">讨论</a></li>
                <li><a href="expriment.aspx" >实验</a></li>
                 <li><a href="personalInformationCenter.aspx">中心</a></li>
                <li><a href="about-us.aspx" class="last">关于</a></li>
            </ul>    	
        </div> 
        
        <div id="search_section">
            <asp:TextBox ID="TextBox1" runat="server" Width="153px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="搜索" Width="86px" /> 
            </div>         
        <div class="cleaner"></div>	
	</div>
       <div id="medicin_search_content">
          <div id="container" class="container">
            <div class="col-md-6" ">
              	<h2>个人信息</h2>       
                <div id="Form1" role="form" runat="server">
                  <div class="form-group">
                      <asp:Label ID="Label1" runat="server" Text="昵称：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textName" runat="server" CssClass="form-control" Enabled="False" >周琼</asp:TextBox>
                  </div>
                     <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="性别：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textSex" runat="server" CssClass="form-control" Enabled="False" EnableTheming="True" >女</asp:TextBox>
                  </div>
                  <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="密码：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textPsw" runat="server" CssClass="form-control" EnableTheming="True"  TextMode="Password" Enabled="False" EnableViewState="False">123ewe</asp:TextBox>
                  </div>
                  
                   <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="邮箱：" Font-Size="Larger"  ></asp:Label>
                    <asp:TextBox ID="textEmail" runat="server" CssClass="form-control" Enabled="False">1743292719@qq.com</asp:TextBox>
                  </div>
                  <div class="form-group">
                   <asp:Label ID="Label6" runat="server" Text="QQ：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textQQ" runat="server" CssClass="form-control" Enabled="False"  >1743292719</asp:TextBox>
                 
                
                
                    <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="更改信息" />
                    <asp:Button ID="Button2" runat="server"  class="btn btn-default" Text="保存"  Width="95px" />
                
                </div>

                   

           </div>
            
     	</div>
        </div> 
          </div>          
      
   <div id="medcine_footer">
        <ul class="footer_list">
            <li><a href="#" class="current">hongwei</a></li>
            <li><a href="#">gongguiwei</a></li>
            <li><a href="#">wuhengjin</a></li>
            <li><a href="#">zhouqiong</a></li>
            <li class="last"><a href="#">yamgshuyuan</a></li>
        </ul> 

        </div>

    </form>
    
                  
</body>
</html>
