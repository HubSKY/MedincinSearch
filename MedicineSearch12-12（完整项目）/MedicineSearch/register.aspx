<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MedicineSearch.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>注册</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
     <div id="container" class="container" style="background:url(../images/head.jpg); padding-left:20px; height: 973px;">
            <div class="col-md-6" ">
              	<h2>注册</h2>       
                <form role="form" runat="server">
                  <div class="form-group">
                      <asp:Label ID="Label1" runat="server" Text="昵称：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textName" runat="server" CssClass="form-control" placeholder="请输入你的昵称"></asp:TextBox>
                  </div>
                     <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="性别：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textSex" runat="server" CssClass="form-control" placeholder="请输入你的性别"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="密码：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textPsw" runat="server" CssClass="form-control" EnableTheming="True" placeholder="请输入你的密码" TextMode="Password"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="确认密码：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textSPsw" runat="server" CssClass="form-control" placeholder="请确认你的密码" TextMode="Password"></asp:TextBox>
                  </div>
                   <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="邮箱：" Font-Size="Larger"  ></asp:Label>
                    <asp:TextBox ID="textEmail" runat="server" CssClass="form-control" placeholder="请输入你的邮箱"></asp:TextBox>
                  </div>
                  <div class="form-group">
                   <asp:Label ID="Label6" runat="server" Text="QQ：" Font-Size="Larger"></asp:Label>
                      <asp:TextBox ID="textQQ" runat="server" CssClass="form-control" placeholder="请输入你的QQ号"></asp:TextBox>
                 
                
                
                    <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="确定" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server"  class="btn btn-default" Text="返回" OnClick="Button2_Click" />
                
                </form>

                   

           </div>
            <asp:Label ID="lableTip" runat="server"></asp:Label>
            
     	</div>
  
</body>
</html>
