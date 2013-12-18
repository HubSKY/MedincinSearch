<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personalInformationCenter.aspx.cs" Inherits="MedicineSearch.personalInformationCenter" %>

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
                <li><a href="MYmessage.aspx">讨论</a></li>
                <li><a href="expriment.aspx" >实验</a></li>
                 <li><a href="personalInformationCenter.aspx">中心</a></li>
                <li><a href="about-us.aspx" class="last">关于</a></li>
            </ul>    	
        </div> 
        
        <div id="search_section">
            <asp:TextBox ID="TextBox1" runat="server" Width="153px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="搜索" OnClick="searchButton_Click" Width="86px" /> 
            </div>         
        <div class="cleaner"></div>	
	</div>
       <div id="medicin_search_content">
          <div id="container" class="container">
            <div class="col-md-6" style="float:left">
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
                 
                
                
                    <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="更改信息" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server"  class="btn btn-default" Text="保存" OnClick="Button2_Click1" Width="95px" />
                
                </div>

                   

           </div>
            
     	</div>
              <div style="height: 520px; margin-left: 703px;margin-top:40px; width: 203px;">
                  <p>收藏夹</p>
                  <div>
                      <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" Width="194px" OnDeleteCommand="DataList1_DeleteCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                          <AlternatingItemStyle BackColor="PaleGoldenrod" />
                          <FooterStyle BackColor="Tan" />
                          <HeaderStyle BackColor="Tan" Font-Bold="True" />
                          <ItemStyle VerticalAlign="Middle" />
                          <ItemTemplate>
                              <table border="0" style="padding:initial;width:100%">
                                  <tr>
                                      <td style="width:10%;height:20px;"></td>
                                      <td style="text-align:left;height:20px;width:60%;">
                                          <a href='detailPage.aspx?Mno=<%#DataBinder.Eval(Container.DataItem,"Mno") %>'>
                                          <span>
                                    <asp:Label ID="MnameV" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Mname") %>'></asp:Label>     


                                </span></a><br />
                                      </td>
                                      <td>
                                          <asp:LinkButton CommandName="Delete"  ID="Del_But" ForeColor="#003366" runat="server" >删除</asp:LinkButton>
                                      </td>
                                  </tr>
                              </table>
                          </ItemTemplate>
                          <FooterTemplate>
                          <table border="0" style="padding:initial;width:100%">
                              <tr>
                                  <td> <asp:ImageButton ID="ImBnextPage"  ImageUrl="" runat="server" Height="28px" Width="66px" /></td>
                                  <td><asp:Label ID="currentPage" runat="server" Text="1"></asp:Label><a>/</a><asp:Label ID="sumPage" runat="server"></asp:Label></td>
                                  <td> <asp:ImageButton ID="ImBlastPage"  ImageUrl="" runat="server" Height="28px" Width="66px" /></td>
                              </tr>
                          </table>
                          </FooterTemplate>
                          <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                      </asp:DataList>
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
