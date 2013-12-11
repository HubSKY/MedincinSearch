<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="wangye.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>登录</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div id="container" class="container" style="background:url(../images/head.jpg); padding-left:20px;">
            <div class="col-md-6" ">
              	<h2>登录</h2>       
                <form id="Form1" role="form" runat="server">
                  <div class="form-group">
                      <asp:Label ID="Label1" runat="server" Text="昵称：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textName" runat="server" CssClass="form-control" placeholder="请输入你的昵称"></asp:TextBox>
                  </div>            
                  <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="密码：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textPsw" runat="server" CssClass="form-control" EnableTheming="True" placeholder="请输入你的密码" TextMode="Password"></asp:TextBox>
                 </div>
                    <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="确定"  />
                  <asp:Button ID="Button2" runat="server"  class="btn btn-default" Text="注册"  />
                    </form>
                  
                  <asp:Label ID="lableTips" runat="server"></asp:Label>
    
                  
</body>
</html>
