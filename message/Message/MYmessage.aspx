<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MYmessage.aspx.cs" Inherits="Message.MYmessage" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>讨论互动</title>
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
        <div id="main">
            <asp:Repeater runat="server" ID="rptMessage" OnItemDataBound="rptMessage_ItemDataBound">
                <ItemTemplate>
                    <div class="message ">
                        <div class="message-info"> <span class="message-time">
                                <%#Eval("postime","{0:F}") %></span>

                            <span class="float-right">#<%#Eval("ID") %>[<a href="disscussreply.aspx?mid=<%#Eval("ID") %>">回复留言</a>]</span>
                           
                        </div>
                        <div class="message-userinfo">
                            昵称：<%#Eval("Unickname")%><br />
                            注册账号：<%#Eval("registernumber")%><br />
                            性别：<%# Eval("Usex").ToString()%><br />
                            ＱＱ：<%#Eval("Uqq").ToString() == "" ? "保密" : Eval("Uqq").ToString()%><br />
                            Email：<%#Eval("Uemail").ToString()==""?"保密":Eval("Uemail").ToString()%><br />
                            <%--昵称：<%="Unickname"%><br />
            注册账号：<%="registernumber"%><br />
            性别：<%="Usex"%><br />
          
            ＱＱ：<%=Uqq%><br />
            Email：<%=Uemail%><br />--%>
                        </div>
                        <div class="message-content">
                            留言内容：<hr />
                            <%#Eval("content")%>
                            <br />
                            <br />
                            <%--该留言对应的回复--%>
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
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="pager">
                <webdiyer:AspNetPager UrlPaging="true" AlwaysShow="true" ShowFirstLast="false" ShowPrevNext="false"
                    NumericButtonCount="5" ShowCustomInfoSection="Right" ShowNavigationToolTip="true"
                    ShowPageIndexBox="Always" PageIndexBoxType="TextBox" CustomInfoHTML="%RecordCount% | %CurrentPageIndex%/%PageCount%页"
                    CustomInfoSectionWidth="80px" ID="AspNetPager1" runat="server">
                </webdiyer:AspNetPager>
            </div>
        </div>
        <!--侧边-->
        <div id="sidebar">
            <div class="sidebar-border sidebar-class">
                <h2>
                    欢迎进入中医药搜索学习交流小天地，亲爱的，您可以在这里留下您宝贵的意见哦！ (*^__^*)(*^__^*)(*^__^*)</h2>



                <div id="sidebar-message-publish" class="sidebar-border sidebar-class">
                   
                        
                    <div class="fb">
                    
                        <a href="disscusspublish.aspx">发布留言</a>
                    </div>
                </div>




                <ul>
                    <li><a href="#">
                        <img src="images/木瓜海棠.jpg" /></a></li>
                    <li><a href="#">
                        <img src="images/仙茅.jpg" /></a></li>
                  
                    <li><a href="#">
                        <img src="images/连翘%20-%20副本.jpg" /></a></li>
                </ul>
            </div>
        </div>
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
