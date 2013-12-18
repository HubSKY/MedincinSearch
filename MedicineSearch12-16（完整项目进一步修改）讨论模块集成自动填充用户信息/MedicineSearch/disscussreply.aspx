<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="disscussreply.aspx.cs" Inherits="MedicineSearch.disscussreply" %>


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="disscussreply.aspx.cs" Inherits="Message.disscussreply" %>--%>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>讨论回复</title>
    <link href="css/Search.css" rel="stylesheet" type="text/css" />
    <link href="css/message.css" rel="stylesheet" type="text/css" />
</head>
<body>
         <form id="medicin_search_container"  runat="server">
	
    <div id="medicin_search_banner">
        
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
           <div id="form1" >
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>  
                <asp:Button ID="Btnn1" runat="server" Text="搜索" OnClick="Btnn1_Click"  />
            </div>
        </div> 
        
        <div class="cleaner"></div>	
	</div>
     <div style="padding-top:20px">&nbsp;</div>
             

             <div class="message ">
                <div class="message-info">
                    <span class="float-right">#<%=disscussID.ToString() %>
                [<a href="disscussreply.aspx?mid=<%=disscussID.ToString() %>">回复留言</a>]</span>
            <span class="message-time">
                <%=postime %>
            </span>
                </div>
                <div class="message-userinfo">
  

            昵称：<%=Unickname%><br />
            注册账号：<%=registernumber%><br />
            性别：<%=Usex%><br />
          
            ＱＱ：<%=Uqq%><br />
            Email：<%=Uemail%><br />
                                   
                </div>




                <div class="message-content">
                    留言内容：<hr />
                   <%=content%>
                    <br /><br />
                 <%--   该留言对应的回复--%>
                    <asp:Repeater ID="rptdisscussreply" runat="server">
                        <ItemTemplate>
                            <div class="<%#(bool)Eval("isadmin")?"message-admin-replay":"message-user-replay" %>">
                                <div class="message-replay-time">
                                    <%#(bool)Eval("isadmin")?"管理员":"" %>【<%#Eval("Unickname")%>】于【 <%#Eval("replytime", "{0:F}")%>】回复：</div>
                                <hr />
                                <%#Eval("content")%>
                            </div>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>





                <div style="clear: both;">
                </div>
            </div>
            <div style="clear: both; width: 945px;">
           
<div class="pager">
        <webdiyer:AspNetPager UrlPaging="true" AlwaysShow="true" ShowFirstLast="false" ShowPrevNext="false"
            NumericButtonCount="5" ShowCustomInfoSection="Right" ShowNavigationToolTip="true"
            ShowPageIndexBox="Always" PageIndexBoxType="TextBox" CustomInfoHTML="%RecordCount% | %CurrentPageIndex%/%PageCount%页"
            CustomInfoSectionWidth="80px" ID="AspNetPager1" runat="server">
        </webdiyer:AspNetPager>
    </div>





    <div id="message-replay" class="main-content border" style="margin-left:200px">
        <h2>
            <em>&nbsp;</em>回复留言</h2>
        <div class="message-input clearfix">
            <div class="message-label">
                昵称：</div>
            <div class="message-editor">
                <asp:TextBox ID="tbUnickname" runat="server" Width="186px"></asp:TextBox><span style="color: Red">*</span><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入昵称" ControlToValidate="tbUnickname"
                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="昵称为1-8字符之间"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbUnickname"
                    Display="Dynamic" ErrorMessage="长度只能是8字符之内" ForeColor="Red" SetFocusOnError="True"
                    ValidationExpression="^(\s|\S){1,8}$"></asp:RegularExpressionValidator>
            </div>
            <div class="message-label message-input-content">
                留言内容：</div>
            <div class="message-editor message-input-content">
                <asp:TextBox ID="tbcontent" TextMode="MultiLine" runat="server" Height="62px" Width="258px"></asp:TextBox><span
                    style="color: Red">*</span>
            </div>
            <div class="message-label">
            </div>
            <div class="message-editor">
                <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="请输入回复内容"
                    ControlToValidate="tbcontent" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>



        <!--侧边-->
        
    </div>
             
    <div style="clear: both;">
    </div>
   
    <!--页脚-->
    <div id="footer">
        <p>
            Useright © 2013 - 2015 All Rights Reserved</p>
        <p>
            【周琼】 版权所有</p>
        </div>
    </form>
</body>
</html>
