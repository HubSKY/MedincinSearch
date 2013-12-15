<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="disscussreply.aspx.cs"
    Inherits="Message.disscussreply" %>

<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="disscussreply.aspx.cs" Inherits="Message.disscussreply" %>--%>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>讨论回复</title>
    <link href="css/Search.css" rel="stylesheet" type="text/css" />
    <link href="css/message.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function clearText(field) {

            if (field.defaultValue == field.value) field.value = '';
            else if (field.value == '') field.value = field.defaultValue;

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="medicin_search_container">
        <div id="medicin_search_banner">
        </div>
        <div id="medicin_search_menu_search">
            <div id="medicin_search_menu">
                <ul>
                    <li><a href="#">首页 </a></li>
                    <li><a href="#">在线测试</a></li>
                    <li><a href="#">课件下载</a></li>
                    <li><a href="#">讨论互动</a></li>
                    <li><a href="#">个人中心</a></li>
                    <li><a href="#" class="last">关于我们</a></li>
                </ul>
            </div>
            <!-- end of menu -->
            <div id="search_section">
                <form action="#" method="get">
                <input type="text" value="请输入搜索的内容" name="q" size="10" id="searchfield" title="searchfield"
                    onfocus="clearText(this)" />
                <input type="submit" name="Search" value="搜索" alt="Search" id="searchbutton" title="Search"
                    onblur="clearText(this)" />
                </form>
            </div>
            <div class="cleaner">
            </div>
        </div>
        <div class="message ">
            <div class="message-info">
                <span class="message-time">
                    <%=postime %>
                </span><span class="float-right">#<%=disscussID.ToString() %>
                    [<a href="disscussreply.aspx?mid=<%=disscussID.ToString() %>">回复留言</a>]</span>
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
                <br />
                <br />
                <%--   该留言对应的回复--%>
                <asp:Repeater ID="rptdisscussreply" runat="server">
                    <ItemTemplate>
                        <div class="<%#(bool)Eval("isadmin")?"message-admin-replay":"message-user-replay" %>">
                            <div class="message-replay-time">
                                <%#(bool)Eval("isadmin")?"管理员":"" %>【<%#Eval("Unickname")%>】于【
                                <%#Eval("replytime", "{0:F}")%>】回复：</div>
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
    <div style="clear: both;">
        <div class="pager">
            <webdiyer:AspNetPager UrlPaging="true" AlwaysShow="true" ShowFirstLast="false" ShowPrevNext="false"
                NumericButtonCount="5" ShowCustomInfoSection="Right" ShowNavigationToolTip="true"
                ShowPageIndexBox="Always" PageIndexBoxType="TextBox" CustomInfoHTML="%RecordCount% | %CurrentPageIndex%/%PageCount%页"
                CustomInfoSectionWidth="80px" ID="AspNetPager1" runat="server">
            </webdiyer:AspNetPager>
        </div>
        <div id="message-replay" class="main-content border">
            <<h2>
                <em>&nbsp;</em>回复留言</h2>
            <div class="message-input clearfix">
                <div class="message-label">
                    昵称：</div>
                <div class="message-editor">
                    <asp:TextBox ID="tbUnickname" runat="server"></asp:TextBox><span style="color: Red">*</span><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入昵称" ControlToValidate="tbUnickname"
                        Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="昵称为1-8字符之间"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbUnickname"
                        Display="Dynamic" ErrorMessage="长度只能是8字符之内" ForeColor="Red" SetFocusOnError="True"
                        ValidationExpression="^(\s|\S){1,8}$"></asp:RegularExpressionValidator>
                </div>
                <div class="message-label message-input-content">
                    留言内容：</div>
                <div class="message-editor message-input-content">
                    <asp:TextBox ID="tbcontent" TextMode="MultiLine" runat="server"></asp:TextBox><span
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
        <%--  <div id="sidebar">
            <div class="sidebar-border sidebar-class">
                <h2>
                    欢迎进入中医药搜索学习交流小天地，亲爱的，您可以在这里留下您宝贵的意见哦！ (*^__^*)(*^__^*)(*^__^*)</h2>

                <ul>
                    <li><a href="#">
                        <img src="images/木瓜海棠.jpg" /></a></li>
                    <li><a href="#">
                        <img src="images/仙茅.jpg" /></a></li>
                    <li><a href="#">
                        <img src="images/西府海棠1_副本.jpg" /></a></li>
                    <li><a href="#">
                        <img src="images/1.jpg" /></a></li>
                    <li><a href="#">
                        <img src="images/连翘%20-%20副本.jpg" /></a></li>
                </ul>
            </div>
        </div>--%>
    </div>
    <div style="clear: both;">
    </div>
    </div> <!--页脚--> <div id="footer"> <p> Useright © 2013 - 2015 All Rights Reserved</p>
    <p> 【周琼】 版权所有</p> </div>
    </form>
</body>
</html>
